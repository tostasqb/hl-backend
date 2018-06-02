# Getting started

- Rename the .env and provide the infomation requested there.
- `rails s`
- Follow the "How to call" section below

That's it!

# How this started

On June 2, 2018 following [this tutorial](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api).

# Usefull information

- [Encrypted credentials in Rails 5.2](https://blog.botreetechnologies.com/encrypted-credentials-a-new-way-to-use-secrets-in-rails-5-2-eca929629bb4)

# How to call

        # create a user
        User.create!(email: 'example@mail.com' , password: '123123123' , password_confirmation: '123123123')

        # Authenticate the user returning a token
        curl -H "Content-Type: application/json" -X POST -d '{ "email":"example@mail.com","password":"123123123" }' http://localhost:3000/authenticate
        > {"auth_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA"}

        # Call without authorization
        curl http://localhost:3000/items
        > {"error":"Not Authorized"} 

        # Call with authorization
        curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA" http://localhost:3000/items
        > []
