# To release

1. `git stash save && git pull && git checkout master`
1. change version number in .env
1. run `docker-compose run --rm package`
