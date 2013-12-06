# High Voltage Demo

This sample application allows visitors to view several static pages served by
the [High Voltage](https://github.com/thoughtbot/high_voltage) gem.

It demonstrates several techniques:

1. A contact form for visitors to fill out.
2. Top-level routes to remove the `pages` directory from the path.
3. A 301 redirect to `/home` to the root path.

## Install

### Download the source

Clone the git repository

    $ git clone git@github.com:harlow/high_voltage_demo.git
    $ cd high_voltage_demo
    $ bundle

Create database and run migrations (Postgres is required for Heroku deployment)

    $ rake db:create

Run the rails server

    $ rails s

### View the Application

From a web browser access the site via [localhost:3000](http://localhost:3000)

## Deploy the application to Heroku

Create an application container on Heroku

    $ heroku create

Push the code to the Heroku container

    $ git push heroku master

## Test suite

RSpec and Capybara used for Integration and Unit tests

    $ rspec

## Credits

High Voltage Demo is maintained by [Harlow Ward](http://www.hward.com). Thank
you to all the [contributors](https://github.com/harlow/high_voltage_demo/graphs/contributors).
