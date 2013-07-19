# Dashing JSON

Make your json absolutely dashing in your rails views.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dashing_json'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dashing_json

### Next, you need to require the `.js.coffee` and `.css.scss` assets:

If you're using sprockets, add the following to your `application.css`:

    *= require dashing_json

If you're using an `application.css.scss` file:

```scss
@import "dashing_json";
```

And, include the scripts with the following in your `application.js`

    *= require dashing_json

## Usage

No, you simply need to instantiate the json blob in you controller:

```ruby
class ModelController < ApplicationController

# ...
  def show
    @model = Model.find(params[:id])
    @json_blob = get_json_blob(@model)
  end
#...
```

And, then call the `dashing_json` method in your view:

```erb
<%= dashing_json(@json_blob) %>
```

That's it, your json is now dashing.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
