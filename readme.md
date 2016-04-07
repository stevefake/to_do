# DB
  1. Database config
  2. Databases are not just created `rake db:create` if using postgres
  2. Migrations vis `rake db:migrate`
  2. Make a new migration `rake generate:migration {name of migration}`
  3. Torch db via `rake db:drop`

## Must have Locally

1. `brew install postgres`
**Follow instructions to setup first db**

## Deploying to heroku

1. Ensure you have heroku toolbelt
2. Run `heroku create`
3. Run `heroku run "rake db:migrate"` to migrate your servers database
3. Poke it with `heroku run bash` to spawn a "ssh" session on heroku
