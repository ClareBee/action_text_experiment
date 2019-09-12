# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
**ActionText**
```
rails action_text:install
```

- needs Active Storage
```
rails active_storage:install
```
- uncomment in Gemfile (ImageMagick re: image resizing)
```ruby
# Use Active Storage variant
gem 'image_processing', '~> 1.2'
```
**Tribute.js**
For a dropdown
```
yarn add tributejs
```
**Stimulus.js**
Basecamp's https://stimulusjs.org/handbook/origin
```
rails webpacker:install:stimulus
```
- to coordinate Trix & Tribute JavaScript

**Devise 4.7.1**
gem 'devise'
bundle install
rails g devise:install
Follow console instructions:
1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

rails generate devise User
rails db:migrate

before_action :authenticate_user!
user_signed_in?
user_session
current_user
SEE https://github.com/plataformatec/devise for config/params/customisation etc.


**Styling & Development**
Initial commit:
```
rails new action_text_app --skip-coffee --skip-sprockets --skip-turbolinks --webpack --database=postgresql  -T
```
Using Foreman:
- touch Procfile
- add:
```
server: bin/rails server
assets: bin/webpack-dev-server
```

```
gem install foreman
```
```
foreman start
```
Using `stylesheet_pack_tag` in application.html.erb to load css w webpack via application.js

yarn add normalize.css
