require 'dashing_json'

module DashingJson
  class Railtie < Rails::Railtie
    initializer 'dashing_json' do |app|
      ActionView::Base.send :include, DashingJson
      require 'view_helpers'
    end
    require 'view_helpers'
  end
end