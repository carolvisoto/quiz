# Quiz

What is necessary to run the application:

- Ruby 2.1.1
- Rails 4.1.6
- PostgreSql Database
   
## Development

1. ```brew install postgresql```
2. ```bundle install```
3. ```rake db:setup```
4. ```rails s```
5. go to ```http://localhost:3000```

## Testing

1. ```ENV=test rake db:migrate```
2. ```rspec spec```

##Production
go to ```http://personalityquiz.herokuapp.com/```

