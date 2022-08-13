![](https://img.shields.io/badge/Microverse-blueviolet)

# Budget App

## Description

> The Ruby on Rails capstone project Budget App is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.


This Ruby on Rails application allows the user to:

- Register and log in, so that the data is private to them.

- Introduce new transactions associated with a category.

- See the money spent on each category.


## Built With

- Ruby
- Ruby on Rails
- Postgress
- Capybara/Rspec
- CSS

## Video presentation

[Click here](https://www.loom.com/share/2209989877fd4e03aad8c5c5ef9476e8)

## Live Demo (Link for Budget App)

[Heroku Live Demo Link](https://lit-brook-15225.herokuapp.com/)

## Development set up

Clone Repository using

`git clone git@github.com:amrendrakind/budget-app.git`

Or using HTTPS

`git clone https://github.com/amrendrakind/budget-app.git`

Move into project directory

`cd budget-app`

### Setup Database 
- Make sure that your Postgres database is installed.
- Open the file config\database.yml
- Modify the connection parameters to point your Postgres database:

    `username: [your_user]`

    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`

### Run Tests

- Install rspec: `bundle install`
- Run all tests: `rspec spec`
- Run all tests and show test documentation: `rspec spec --format documentation`

### Run App
- If required (Not for testing) run `rails server`
- Visit http://localhost:3000/ in your browser!

## Author

👤 **Amrendra K**

- GitHub: [@amrendrakind](https://github.com/amrendrakind)
- Twitter: [@amrendrak_](https://twitter.com/amrendrak_)
- LinkedIn: [amrendraakumar](https://linkedin.com/in/amrendraakumar)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/amrendrakind/budget-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Based on [Gregoire Vella on Behance design](https://www.behance.net/gregoirevella)
- Hat tip to anyone whose code was used
- Inspiration and support from peer group

## 📝 License

This project is [MIT](./LICENSE) licensed.