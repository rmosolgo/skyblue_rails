# skyblue_rails [![Build Status](https://travis-ci.org/rmosolgo/skyblue_rails.svg?branch=master)](https://travis-ci.org/rmosolgo/skyblue_rails)

Use [SkyBlue](http://stanko.github.io/skyblue/) Sass framework with Rails. You can [choose your own settings](#overrides), too!

This gem uses the [`Stanko/skyblue` master branch](https://github.com/Stanko/skyblue) as a source.

## Usage

- Install:

  ```ruby
  gem 'skyblue_rails'
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

## Overrides

If you use Sass, you can override SkyBlue's defaults. To do this, define any variable before importing SkyBlue:

```scss
// application.scss

$text-color: #FF22D2;
$font-family: "Comic Sans", sans-serif;
// D:

@import 'skyblue';
```

You can see the available variables in [_variables.scss](https://github.com/rmosolgo/skyblue_rails/blob/master/assets/stylesheets/skyblue/_variables.scss).


## Development

- Rebuild assets: `rake build_assets`
  - Clone the source
  - Clear existing assets
  - Copy assets into proper directories
  - Modify & create some files for Rails-friendliness
- Test: `rake test`
- Publish: increment version and `rake publish_gem`

## Contributing

1. Fork it ( https://github.com/rmosolgo/skyblue-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
