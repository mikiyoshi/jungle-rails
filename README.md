# Jungle Project

## Setup

1. Run `bundle install` to install dependencies

`bin/rake db:reset` db restart

`bin/rails s -b 0.0.0.0` server start

Bootstrap v3.3.6
https://getbootstrap.com/docs/3.4/javascript/
font-awesome-rails-4.5.0.1
https://fontawesome.com/v4/icon/exclamation-triangle

custom css
/Users/mikiyoshikokura/Desktop/Sites/light-house-lab/virtualbox/w9/jungle-rails/app/assets/stylesheets/products.scss

## command `bin/rake routes`

           Prefix Verb   URI Pattern                   Controller#Action
             root GET    /                             products#index
         products GET    /products(.:format)           products#index
          product GET    /products/:id(.:format)       products#show
         category GET    /categories/:id(.:format)     categories#show
    add_item_cart POST   /cart/add_item(.:format)      carts#add_item

remove_item_cart POST /cart/remove_item(.:format) carts#remove_item
cart GET /cart(.:format) carts#show
orders POST /orders(.:format) orders#create
order GET /orders/:id(.:format) orders#show
admin_root GET /admin(.:format) admin/dashboard#show
admin_products GET /admin/products(.:format) admin/products#index
POST /admin/products(.:format) admin/products#create
new_admin_product GET /admin/products/new(.:format) admin/products#new
admin_product DELETE /admin/products/:id(.:format) admin/products#destroy

https://dashboard.stripe.com/test/dashboard

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

future date 12/22
any 3 number key 111, 123

# rspec-rails

https://github.com/rspec/rspec-rails

Gemfile

```
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  # ...
end
```

`bundle # aka bundle install`

///////////////////////////////////////////////////

# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
