module Skyblue
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'skyblue_rails.asset_paths' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          path = File.expand_path("../../../../assets/#{sub}", __FILE__)
          app.config.assets.prepend_path(path)
        end
        app.config.assets.precompile << %r(pe-icon/Pe-icon-7-stroke\.(?:eot|svg|ttf|woff?)$)
      end
    end
  end
end
