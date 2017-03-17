## Rails Authentication with JSON Web Token


This is part of a tutorial article about authentication with JWT tokens in rails
You can view the tutorial [here](http://tutorials.pluralsight.com/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api)

## Setup

* Install RVM https://rvm.io/rvm/install

* Use RVM to install and use Ruby version 2.3.0

```
rvm install 2.3.0
rvm use 2.3.0
```

* Install Gems

```
bundle install
```

* Migrate into database

```
rails db:migrate
```

* Run the server

```
rails s
```

* Open a new Terminal.app tab and create a new user using Rails Console

```
rails console

User.create(:email => 'example@mail.com', :password => '123', :password_confirmation => '123')
```

* Open another Terminal.app tab and use cURL to perform a JWT HTTP POST request to back-end

```
curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123"}' http://localhost:3000/authenticate
```
