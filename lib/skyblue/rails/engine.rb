# Copied shamelessly from bootstrap-sass :D
module Skyblue
  module Rails
    class Engine < ::Rails::Engine
      initializer 'skyblue.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
        app.config.assets.precompile << %r(pe-icon/Pe-icon-7-stroke\.(?:eot|svg|ttf|woff?)$)
        app.config.assets.precompile << %r(select-webkit.*)
      end
    end
  end
end