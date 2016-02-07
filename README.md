# Leather

[![Gittip   ](http://img.shields.io/gittip/dvanderbeek.svg)                        ](https://gittip.com/dvanderbeek)

Adds some useful setup for Rails apps that use Devise and Bootstrap 3. Creates a UI Kit page that makes it easy to define Bootstrap styles before starting the design process. Adds a nice-looking set of Devise views that use Bootstrap markup. Provides some useful partials for common Bootstrap components like modals, allowing you to skip the trip to getbootstrap.com to copy the markup.

## Installation

Add this line to your application's Gemfile:

    gem 'leather'

Then execute:

    $ bundle
    $ rails g leather:install

You'll also want to add the following styles to your application.css.scss by including:

    @import 'bootstrap_variables';
    @import 'bootstrap';
    @import 'leather';
    
And the following to your application.js:

    //= require bootstrap
    //= require leather
    
And modify your `<body>` tag:

    <body class="<%= params[:controller].split("/").join("_") %> <%= params[:action] %> <%= yield(:body_class) %>">
    
This will install leather, along with devise and bootstrap-sass as dependencies. You will also need to install Devise if you haven't already. The basic steps are to run:

    $ rails g devise:install
    $ rails g devise User

and make sure you have:

* Flash messages displayed in your application layout
* A root route set
* Default URL options for the Devise mailer configured for each environment. An example for `config/environments/development.rb` is:

```
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

## Usage

### Devise Views

The leather install generator will copy fully-customizable devise views into your application that look good by default:

![Screenshot](https://raw.githubusercontent.com/dvanderbeek/leather/master/login.png)

### UI Kit

After running `rails g leather:install`, you can visit `localhost:3000/ui_kit` to view the common bootstrap elements that should be styled for use in your designs.

![Screenshot](https://raw.githubusercontent.com/dvanderbeek/leather/master/ui-kit.png)

The leather:install generator will also copy the bootstrap-sass variables file to your `app/assets/stylesheets` folder. This is where you should go first when you want to change a bootstrap default color, size, or other style.

### Components

You can also visit `localhost:3000/components` to view some additional bootstrap-based components to help get your static pages looking nice quickly. Check out the source of the `app/views/leather/application/components.html.haml` file to see the markup. Styles will be included if you add the leather.css.scss file to your app's stylesheet.

![Screenshot](https://raw.githubusercontent.com/dvanderbeek/leather/0b4bd5378104544f50f4ee56f452f017c966f0a8/components.png)

### Bootstrap Helpers

Leather includes helper methods and view partials to help make it easy to use Bootstrap components in your views. See the wiki for instructions and examples.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
