# RetinaImageTag

Use the ```retina_image_tag``` for retina image serving

Inspired by https://github.com/imulus/retinajs

## Installation

Add this line to your application's Gemfile:

    gem 'retina_image_tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install retina_image_tag

## Usage

Include the Javascript in your view

```ruby
<%= javascript_include_tag 'retina' %>
```

Use the helper
```ruby
<%= retina_image_tag('high-res-hero.png', :hid => true, :at2x => 'high-res-hero-large.png') %>
```

By default, the retina image should have ```_2x``` as Apple has them.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
