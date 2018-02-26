# To release

1. `git stash save && git pull && git checkout master`
1. change version number in .env
1. run `docker-compose run --rm package`
1. Upload on [https://chrome.google.com/webstore/developer](https://chrome.google.com/webstore/developer)
1. Update descriptions and images in all languages
