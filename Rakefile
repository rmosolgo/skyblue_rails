require "bundler/gem_tasks"

SKYBLUE_PATH = "./skyblue_source"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "spec" << "lib"
  t.pattern = "spec/**/*_spec.rb"
end

task(default: :test)

def puts_header(text)
  puts "\n#{text}\n--------------------"

end

desc "Clear copied assets from /assets/{whatever}"
task :clear_assets do
  puts_header("Clearing")

  directories = [
    "./assets/javascripts",
    "./assets/stylesheets",
    "./assets/fonts",
    "./assets/images",
  ]
  directories.each do |dir|
    puts "  - Clearing #{dir}"
    FileUtils.rm_rf(dir)
    FileUtils.mkdir(dir)
  end
end

desc "Rebuild assets from '#{SKYBLUE_PATH}' into gem source"

task build_assets: [:clone_source, :clear_assets, :copy_assets, :add_ie_js, :modify_font_urls] do
end

desc "Add ie.js for `skyblue/ie` include"
task :add_ie_js do
  puts_header("Adding ie.js")
  ie_js_path = "./assets/javascripts/skyblue/ie.js"
  File.open(ie_js_path, 'wb+') do |file|
    file.puts("//= require_directory ./ie\n")
  end
end

desc "Make font URLs Rails-friendly"
task :modify_font_urls do
  puts_header("Using `font-path` helper")
  icons_path = "./assets/stylesheets/skyblue/_icons.scss"
  icons_css = File.read(icons_path)
  # replace relative path with `font-path` helper
  icons_css.gsub!(%r{'\.\.\/fonts/(.*)\?[^']+'}, 'font-path(\'\1\')')
  File.open(icons_path, 'wb+') {|f| f.puts(icons_css)}
end

desc "Copy asset files from #{SKYBLUE_PATH}"
task :copy_assets do
  puts_header("Copying")

  copy_paths = {
    "#{SKYBLUE_PATH}/sass/skyblue" =>      "./assets/stylesheets",
    "#{SKYBLUE_PATH}/sass/skyblue.scss" => "./assets/stylesheets",
    "#{SKYBLUE_PATH}/fonts/pe-icon" =>     "./assets/fonts",
    "#{SKYBLUE_PATH}/js/ie" =>             "./assets/javascripts/skyblue",
    "#{SKYBLUE_PATH}/img/*" =>              "./assets/images",
  }

  src_just = copy_paths.keys.map(&:length).max
  dest_just = copy_paths.values.map(&:length).max
  copy_paths.each do |src, dest|
    puts "  - Copying #{src.ljust(src_just)} -> #{dest.ljust(dest_just)}"
    FileUtils.mkdir_p(dest)
    FileUtils.cp_r(Dir.glob(src), dest)
  end
end

desc "Clone the source"
task :clone_source do
  puts_header("Cloning source into #{SKYBLUE_PATH}")
  FileUtils.rm_rf(SKYBLUE_PATH)
  `git clone https://github.com/Stanko/skyblue.git #{SKYBLUE_PATH}`
end
