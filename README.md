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
