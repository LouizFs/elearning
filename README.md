# README

# replace erails-learning with your own tag
#docker buildx build --platform linux/amd64 -t erails-learning .

# make sure to use the name of your Heroku app
#docker tag erails-learning registry.heroku.com/erails-learning/web

# use docker push to push it to the Heroku registry
#docker push registry.heroku.com/erails-learning/web

# then use heroku release to activate
#heroku container:release web -a erails-learning