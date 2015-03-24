require "skyblue/rails/version"
require "skyblue/rails/engine"
require "sass"

module Skyblue
  module Rails
    def self.load
      asset_root = File.expand_path("../../../assets", __FILE__)
      stylesheets_path  = File.join(asset_root, "stylesheets")
      javascripts_path  = File.join(asset_root, "javascripts")
      fonts_path        = File.join(asset_root, "fonts")

      Sass.load_paths << stylesheets_path

      Sprockets.append_path(stylesheets_path)
      Sprockets.append_path(fonts_path)
      Sprockets.append_path(javascripts_path)
    end
  end
end
