Spree::OrdersController.class_eval do
  def reorder
    order = Spree::Order.find_by_number!(params[:id])
    current_order = current_order(create_order_if_necessary: true)
    begin
      order.line_items.each do |line_item|
        current_order.contents.add(line_item.variant, line_item.quantity, {})
      end
    rescue ActiveRecord::RecordInvalid => e
      error = e.record.errors.full_messages.join(", ")
    end

    if error
      flash[:error] = error
      redirect_back_or_default(spree.root_path)
    else
      respond_with(order) do |format|
        format.html { redirect_to cart_path }
      end
    end
  end
end
