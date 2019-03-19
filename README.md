# Getting started

- Rename the .env and provide the infomation requested there.
- rails db:migrate
- rails db:seed
- `rails s`
- Follow the "How to call" section below

That's it!

## All with free resources (due to low traffic)

- Heroku for app
- AWS S3 for file repository
- Rails Admin for backoffice
- Cloudflare for https/caching/security
- Uptimerobot for uptime alert (and prevents heroku sleep mode)
- Sentry for error alerts


# How this started

On June 2, 2018 following [this tutorial](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api).

# How to call

        # create a user
        User.create!(email: 'example@mail.com' , password: '123123123' , password_confirmation: '123123123')

        # Authenticate the user returning a token
        curl -H "Content-Type: application/json" -X POST -d '{ "email":"example@mail.com","password":"123123123" }' http://localhost:3000/authenticate
        > {"auth_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA"}

        # Call without authorization
        curl http://localhost:3000/products
        > {"error":"Not Authorized"} 

        # Call with authorization
        curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA" http://localhost:3000/products
        > []

# Test the deploy

        # running
        curl http://api.highline.com.pt/ping

        # user authenticated
        curl http://api.highline.com.pt/ping_auth

        # database connected
        curl http://api.highline.com.pt/ping_db

