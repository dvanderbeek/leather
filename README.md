# Leather

Adds some useful setup for Rails apps that use Devise and Bootstrap 3. Creates a UI Kit page that makes it easy to define Bootstrap styles before starting the design process. Adds a nice-looking set of Devise views that use Bootstrap markup. Provides some useful partials for common Bootstrap components like modals, allowing you to skip the trip to getbootstrap.com to copy the markup.

## Installation

Add this line to your application's Gemfile:

    gem 'leather'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leather

## Usage

### Installing Devise Views

Run this command to install a set of views for devise that work nicely with Bootstrap 3:

    $ rails g leather:install
    
You'll also want to add the styles to your application.css.scss by adding:

    @import 'devise';

### Adding a UI Kit


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
