# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
A Rails Web Application where the user can create an account and add items to their check list to help them safety health Verification workplaces.
<h3 style= color:blue>Ruby version</h3>
2.7.2
<h3 style= color:blue> System dependencies</h3>

Creates a check List with Rails
Using Bundler and Yarn:
Devise is used for user authentication.

Ruby, PostgreSQL, Capybara, Ajax, Jquery, Javascript, Bootstrap,faker,css.

<h3 style= color:blue>Database creation</h3>
postgresql

<h3>Database initialization</h3>
In order to install checkList locally:

Clone or download this repo.
Run bundle install to install dependencies
yarn install
rails db:create db:migrate db:seed
rails s


<h3 style= color:blue> Deployment instructions</h3>
<h3 style= color:blue>With Heroku pipeline (recommended)</h3>
Push to Heroku staging remote:

git push heroku-staging
Go to the Heroku Dashboard and promote the app to production or use Heroku CLI:

heroku pipelines:promote -a project-staging

