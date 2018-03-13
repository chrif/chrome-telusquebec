# To release

1. `git stash save && git checkout master && git pull`
1. change version number in .env
1. run `docker-compose run --rm package`
1. Draft a new release on [Github](https://github.com/chrif/chrome-telusquebec/releases/new)
	* Upload packaged zip with release
1. Upload on [Developer Dashboard](https://chrome.google.com/webstore/developer/dashboard)
1. Update descriptions and images in all languages on developer dashboard
