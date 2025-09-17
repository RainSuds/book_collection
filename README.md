# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Users ↔ Books (Many-to-Many)

This app now supports Users and a join model UserBooks to associate many users with many books.

Key files:
- `app/models/user.rb`, `app/models/user_book.rb`, `app/models/book.rb` (associations)
- `app/controllers/users_controller.rb`, `app/controllers/user_books_controller.rb`
- `app/views/users/*`, `app/views/user_books/*`
- `config/routes.rb` (root is `user_books#index`)

Setup after pulling changes:
1) Install gems
2) Run migrations
3) Start the server

PowerShell (Windows):

```powershell
bundle install
bin/rails db:migrate
bin/rails s
```

Navigate to http://localhost:3000/ — you'll land on the "User Books" page. Create Users, ensure you have some Books, then create User-Book links using the dropdowns.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Jdx0fZWo)
