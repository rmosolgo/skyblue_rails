require 'spec_helper'

describe Skyblue::Rails::Railtie do
  let(:gemfile) { File.expand_path('../Gemfile', File.dirname(__FILE__)) }
  let(:asset_cache_directory) { "spec/dummy/tmp/cache/" }
  let(:compiled_asset_directory) { "spec/dummy/public/assets/" }

  let(:compiled_css_file) { Dir.glob("#{compiled_asset_directory}/application*.css")[0]}
  let(:compiled_css) { File.read(compiled_css_file) }

  let(:compiled_js_file) { Dir.glob("#{compiled_asset_directory}/application*.js")[0]}
  let(:compiled_js) { File.read(compiled_js_file) }

  let(:compiled_font_files) { Dir.glob("#{compiled_asset_directory}/pe-icon/*")}
  let(:compiled_image_files) { Dir.glob("#{compiled_asset_directory}/*.png")}

  it 'compiles files' do
    begin
      precompile_command = "bundle exec rake assets:precompile GEMFILE=#{gemfile}"
      compiled = Dir.chdir "spec/dummy" do
        system(precompile_command)
      end
      assert(compiled, "Assets compile successfully")

      # css
      assert_match(/margin-top-5/, compiled_css, "it includes Skyblue")
      assert_match(%r{/assets/pe-icon/Pe-icon-7-stroke}, compiled_css, "it has slugged font paths")

      # js
      assert_match(/matchMedia/, compiled_js, "it may include skyblue/ie")

      # fonts
      assert_equal(4, compiled_font_files.length)

    ensure

      FileUtils.rm_rf [asset_cache_directory, compiled_asset_directory], secure: true
    end
  end
end
