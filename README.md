#  README

  
## DESCRIPTION
TriviaBoss is an app created for the Tandem Apprenticeship Program code challenge built in [Ruby on Rails 6 ](https://rubyonrails.org/) with [Postgres](https://github.com/ged/ruby-pg) as the database and [Bootstrap 4](https://getbootstrap.com/) for styling. With it you can take a quiz with 10 unique questions, see your results, and see your scores over time.


## SYSTEM DEPENDENCIES
-  Ruby v.2.6.3
- Node v14.9.0


## USAGE
The application is currently being hosted on Heroku and [can be found here](https://sleepy-anchorage-99280.herokuapp.com/), or follow the installation instructions below.
  
  
## INSTALLATION
- Download repo
- In your terminal travel to the app directory and run `bundle install && yarn install`
- Create your database with `rails db:create`
- Run migrations with `rails db:migrate`
- Seed data to database with `rails db:seed`
- Run server with `rails s` and navigate to [localhost:3000](localhost:3000)
  

## PACKAGES
While this project was built to be as dependency-free as possible, I have included a few for testing, documentation, user authorization, and styling.
| Gem | Purpose  |
|--|--|
| [pry-rails](https://github.com/rweng/pry-rails)| Colorful debugging in the Rails Console |
|[RSpec](https://github.com/rspec/rspec-rails)| Human-readable testing for Rails|
|[Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)| Simple one line tests for low level actions|
|[FactoryBot](https://github.com/thoughtbot/factory_bot_rails)| Generate factories instead of fixtures for testing|
|[Faker](https://github.com/faker-ruby/faker)| Randomized data for testing |
|[Annotate](https://github.com/ctran/annotate_models)| Automated Schema Documentation on model objects |
|[Devise](https://github.com/heartcombo/devise)| User Authorization|

## TESTING
Testing is handled by RSpec and can be run by entering `rspec path/to/test` into the console while in the project directory.
