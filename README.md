# Jungle Project

This is a e-commerce application based on Rails. User can shopping as a member, administrator managed items and category.

## Products

### PC screen capture

![PC](/docs/pc.png)

### Mobile screen capture

![Mobile](/docs/mobile.png)

## Setup

1. Install dependencies using the `bundle install` command.
2. Set up database using the `bin/rake db:reset` command, load and seed db.
3. Start the web server using the `bin/rails s -b 0.0.0.0` command. The app will be served at <http://localhost:3000/>.

### Running Development Server

Creat a DB such as jungle_development and jungle_test in the `config/database.yml`, `db/schema.rb` defines the schema of the database.

```sh
bin/rails s -b 0.0.0.0
```

### Creating The DB

```sh
rake db:setup
```

```sh
rake db:schema:load
```

This prints a table that defines all the different URL endpoints (ex: GET /cart) and where they map to (or are dispatched to)

```sh
bin/rake routes
```

## Dependencies

Creat a `Gemfile` all dependencies set up.

- ruby "2.3.5" [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- rails, 4.2.6
- pg
- sass-rails 5.0
- uglifier 1.3.0
- jquery-rails
- turbolinks
- jbuilder 2.0
- sdoc 0.4.0
- bcrypt 3.1.7
- puma
- bootstrap-sass 3.3.6
- font-awesome-rails
- money-rails
- carrierwave
- rmagick
- stripe
- faker
- web-console 2.0
- spring
- byebug
- quiet_assets
- dotenv-rails
- rspec-rails 3.5
- capybara
- poltergeist
- database_cleaner
- newrelic_rpm
- rails_12factor
- PostgreSQL 9.x

## Design

- [Bootstrap v3.3.6](https://getbootstrap.com/docs/3.4/javascript/)
- [font-awesome-rails-4.5.0.1](https://fontawesome.com/v4/icon/exclamation-triangle)

## Stripe Testing

### Use Credit Card for testing success scenarios.

- 4111 1111 1111 1111
- 12/22 (MM / YY, use future date)
- 111 (CVC, any 3 number key)

### More information in their docs:

- <https://stripe.com/docs/testing#cards>
- <https://dashboard.stripe.com/test/dashboard>
