Employee Tracker
==========

Creates a web app using Ruby to manage a business' departments and their employees. App uses the sinatra, sinatra-activerecord, and rake gems to manage the database connection and creation.

Database Setup
--------------
Run PostGres in a separate terminal window
```sh
$ postgres
```
App Setup
----------

Assuming you have ruby installed. In the terminal:
```sh
$ gem install bundler
$ bundle
$ ruby app.rb
```

Go to http://localhost:4567 in your browser

Tests
-----

Testing the ruby methods can be done via rspec.

```sh
$ gem install rspec
$ rspec
```
Motivation
---------

This app was created to practice creating databases with active-record and to work with the one:many data relationship.

License
-------

MIT License, copyright 2015. Created by Amy Michelle Johnson and Kathryn Carr.
