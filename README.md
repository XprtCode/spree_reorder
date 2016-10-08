Spree Reorder (Repeat the last order)
============
A Spree 3.0 extension to repeat the last order in a single click of button

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_reorder', github: 'spkprav/spree_reorder', branch: '3-0-stable'
  ```

  The `branch` option is important: it must match the version of Spree you're using.
  For example, use `3-0-stable` if you're using Spree `3-0-stable` or any `3.0.x` version.

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Restart your server

  If your server was running, restart it so that it can find the assets properly.
