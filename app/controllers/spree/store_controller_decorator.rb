Spree::StoreController.class_eval do
  before_action :last_order

  def last_order
    @last_order = current_spree_user.orders.complete.order('completed_at desc').first if current_spree_user.present?
  end
end
