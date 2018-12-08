# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Updated

* Product sold-out badge added
* Added user login/registration
* Admin settings:
    * Category editing
    * Admin pages now restricted with user authentication
* Order details page (after order is complete)
* Email receipt added
* Fixed bug which allowed checkout with empty cart

## Screenshots

!["Screenshot of the main page from a visitor"](https://github.com/connka/jungle-rails/blob/master/docs/main_page_visitor.png)

!["Screenshot of a product's reviews"](https://github.com/connka/jungle-rails/blob/master/docs/user_review.png)

!["Screenshot of a completed purchase's order summary"](https://github.com/connka/jungle-rails/blob/master/docs/order_summary.png)

!["Screenshot of the admin authentication signin"](https://github.com/connka/jungle-rails/blob/master/docs/admin_auth.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Sign up for a Stripe account
5. Put Stripe (test) keys into appropriate .env vars
6. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
