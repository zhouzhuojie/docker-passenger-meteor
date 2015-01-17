sudo rm -rf /home/app/webapp/.meteor/local
meteor update
passenger start --environment production
