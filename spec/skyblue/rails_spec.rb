require 'spec_helper'


describe Skyblue::Rails do
  it 'puts skyblue in Sass load paths' do
    assert(Sass.compile("@import 'skyblue';"), 'it finds the whole framework')
    assert(Sass.compile("@import 'skyblue/_variables';"), 'it finds individual files')
  end

  it 'puts skyblue in Sprockets load paths' do
    environment = Rails.application.assets
    assert(environment.find_asset('skyblue/ie.js'), "it exposes JS")
    assert(environment.find_asset('application.js'), "it exposes app JS manifest")
    assert(environment.find_asset('skyblue.css'), "it exposes CSS")
    assert(environment.find_asset('application.css'), "it exposes app CSS manifest")
  end
end