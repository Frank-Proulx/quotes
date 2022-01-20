# _Quote Generator_

#### _Ruby week 6 Practice project for Rails API lesson at Epicodus Bootcamp_

#### Created By: **Frank Proulx, Morgan Waites, & Christopher Neal**

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _RSpec_
* _shoulda-matchers_
* _IRB_
* _Pry_
* _Postgres_
* _SQL_
* _SQL Designer_
* _Rails_
* _ActiveRecord_
* _Bootstrap SCSS_
* _Faker_
* _Will Paginate_
* _Factory Bot_

## Description

_This project was created for Epicodus bootcamp to show proficiency in Rails APIs. The application is an API for users to retrieve quotes._ 
_All users can access quotes and post, update, delete quotes._

## System Requirements

* Ruby v2.6.5 recommended
* Postgres 12.9  
* Postman
_(Note: Ruby gem dependencies will be installed automatically by Bundler.)_

## Setup/Installation Requirements

* Clone the GitHub repository: [https://github.com/Frank-Proulx/quotes](https://github.com/Frank-Proulx/quotes)
* From the main project directory, enter `bundle install` in the terminal to populate gems.
* To create a database, type in your terminal: 
      `rake db:setup`
* Enter `rspec` into the terminal to confirm passing of all tests.
* Run `rails s` to start the Rails server.

## Endpoints

|Usage | METHOD       | URL       | Params |
| :--------|:------------| :---------| :------|
|See Quotes (Paginated) | GET    | `localhost:3000/quotes?page=1` | _page_ |
|See A Specific Quote | GET    | `localhost:3000/quotes/:id` | |
|Search By Quote Author | GET    | `localhost:3000/quotes?author=&page=1` | _author, page_ |
|See A Random Quote | GET    | `localhost:3000/quotes/random` | |
|Create A Quote | POST    | `localhost:3000/quotes` | _author, content_ |
|Update A Quote | PUT    | `localhost:3000/quotes/:id` | _author, content_ |
|Delete A Quote | DELETE    |`localhost:3000/quotes/:id`| |  

## Responses

When getting a single quote, expect the response to look like:

```
{
  "id" : integer,
  "content" : string,
  "author" : string
}
```

## Known Bugs

* _None at this time._

## License

_[MIT](https://opensource.org/licenses/MIT)_
Copyright (c) _2022_ _Frank Proulx, Morgan Waites, & Christopher Neal_

## Support and Contact Details
* _[christopher.m.neal@gmail.com](mailto:christopher.m.neal@gmail.com)_