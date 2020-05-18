#Awesome Teena

# README

What Is #AwesomeTeena?
* This Is Where Philanthropy Meets Fashion!
* A Charity Website Selling Trendy Shirts with a purpose!


This is a E-Commerce Rails project that uses:

* `ruby ~> 2.7`
* `postgresql` as the database
* `webpacker` with `react`
* `Ruby gems: bootstrap, stripe, reactstrap, devise, devise-bootstrap-views`
* `Heroku for Deployment`

## Initial Setup

* `git clone git@github.com:wyncode/C36_awesome_teena.git`
* `cd C36_awesome_teena`
* `git remote remove origin`


## User Setup

* `rails db:create` 
* `bundle`
* `yarn`
* `rails s`


## Deployment

### The Node.js buildback must be added first or precompiling of assets may fail on Heroku: [See this issue](https://github.com/rails/webpacker/issues/1164#issuecomment-443474860)

* `heroku create your-app-name`
* `heroku buildpacks:set --index 1 heroku/nodejs`
* `heroku buildpacks:add heroku/ruby`
* `git push heroku master`
* `heroku run rails db:migrate`
* _optional_: `heroku run rails db:seed`

