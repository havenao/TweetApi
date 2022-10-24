# TOPICAL TWEETS API

## Using the API
This simple Tweet Api lets you access tweets of a given topic.

Current supported topics are: #healthcare, #nasa, #opensource

We pull the most recent tweets every hour.

### Demo
Use the GET "/tweets/{topic}" endpoint to return JSON with the lastest 10 tweets on that topic (do not include the "#").
ex: "https://fierce-lake-18710.herokuapp.com/tweets/nasa" 

## Configuring the Application
Ruby version 3.1.2

### Connecting to Twitter Api 
- Make twitter developer account. Must upgrade to Elevated account to fix issue with twitter gem.
- Get Api keys and secrets

#### Development
- Run `EDITOR="code --wait" rails credentials:edit --environment=development`. (Replace "code" with editor of choice)
- This will open editor. Add:
  ```
  twitter:
    api_key: MY_API_KEY
    api_secret: MY_API_SECRET
  ```
- Save and close the file. This will create "config/credentials/development.yml.enc" and encryption key.

### Heroku Deployment
#### Deploying to Heroku
- `heroku create`
- `git push heroku main` 
- May attempt to build then fail. Try running `bundle lock --add-platform x86_64-linux` and commit to git. Then push again.

#### Setting Prod Credentials
- Run `EDITOR="code --wait" rails credentials:edit --environment=development`. (Replace "code" with editor of choice)
- This will open editor. Add:
  ```
  twitter:
    api_key: MY_API_KEY
    api_secret: MY_API_SECRET
  ```
- Save and close the file. This will create "config/credentials/production.yml.enc" and encryption key.
- Need to set in heroku `heroku config:set RAILS_MASTER_KEY=123456789` using production encryption key.

#### Database
- Run `heroku run rake db:migrate` to set up database

#### Useful Heroku commands
- `git push heroku main` - deploy app to heroku
- `heroku run console` - access the prod app's console
- `heroku logs --tail` - see logs
- `heroku open` - opens app in browser
- `heroku config:get X` gets value of X environment variable

