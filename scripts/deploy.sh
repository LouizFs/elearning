#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "deploy the application on linux"

  heroku container:push web
  
  heroku container:release web
else
  echo "deploy the application in Mac..."

  docker buildx build --platform linux/amd64 -t erails-learning . 

  docker tag erails-learning registry.heroku.com/erails-learning/web

  docker push registry.heroku.com/erails-learning/web

  heroku container:release web -a erails-learning

  heroku run rails db:migrate
fi





