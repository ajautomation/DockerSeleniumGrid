docker network create gridnetwork
docker run -d -p 4445:4444 --net gridnetwork --name seleniumHub selenium/hub 
docker run -d -p 4446:5900 --net gridnetwork -e HUB_HOST=seleniumHub --name chromeNode selenium/node-chrome-debug
docker run -d -P --net gridnetwork -e HUB_HOST=seleniumHub --name chromeNode2 selenium/node-chrome-debug
docker run -d -p 4447:5900 --net gridnetwork -e HUB_HOST=seleniumHub --name firefoxNode selenium/node-firefox-debug
docker run -d -p 4448:5900 --net gridnetwork -e HUB_HOST=seleniumHub --name operaNode selenium/node-opera
