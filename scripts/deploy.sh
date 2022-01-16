#!/bin/bash

echo "deploy the application..."

docker buildx build --platform linux/amd64 -t erails-learning . 

docker tag erails-learning registry.heroku.com/erails-learning/web

docker push registry.heroku.com/erails-learning/web

heroku container:release web -a erails-learning

heroku run rails db:migrate




