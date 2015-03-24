# skyblue-rails

Use [Skyblue](http://stanko.github.io/skyblue/) Sass framework with Rails.

This gem uses the [master branch](https://github.com/Stanko/skyblue) as a source.

## Usage

- Install:
  ```ruby
  gem 'skyblue-rails'
  ```
  ```
  bundle install
  ```
  then restart your development server.
- Include in Sass:
  ```scss
  // application.scss
  @import 'skyblue';
  ```
  or plain CSS:
  ```css
  /*
   *= require 'skyblue'
  */
  ```
- There's an IE fix that you can include (but I'm not sure what it's for):
  ```javascript
  //= require skyblue/ie
  ```


## Development

- Rebuild assets: `rake build_assets`
  - Clone the source
  - Clear existing assets
  - Copy assets into proper directories
  - Modify & create some files for Rails-friendliness
- Test: `rake test`

## Contributing

1. Fork it ( https://github.com/rmosolgo/skyblue-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request