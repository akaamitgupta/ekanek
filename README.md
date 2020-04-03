# ekanek

1 Requirements
------------
- ruby 2.7+
- MySQL
- rails 6.0.0

2 Installation
--------------------
```
git clone https://github.com/akaamitgupta/ekanek.git
cd ekanek
```

To Install dependencies run `bundle install`

Create a MySQL Database - `ekanek`

Update database config in `config/database.yml`
```
development:
  adapter: mysql2
  encoding: utf8mb4
  database: ekanek
  pool: 5
  username: root
  password:
```
Run the migration `rails db:migrate`

Starting up the Web Server: `rails server`

Open `http://localhost:3000` which will show rails default welcome page.

3 Usage
----------

Signup - http://localhost:3000/signup

Login - http://localhost:3000/login
