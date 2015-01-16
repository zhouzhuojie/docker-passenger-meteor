# Docker-Passenger-Meteor

Docker Image for Meteor production and development. Using **Meteor+Passenger+Fig**, with a volume shared between the container and the host system.

## Usage
- Install Fig: [http://www.fig.sh/install.html](http://www.fig.sh/install.html);
- Create a folder named `webapp` *(meteor create webapp)*; then `cd weapp`.
- Development
    - Copy **[fig-dev.yml](https://raw.githubusercontent.com/zhouzhuojie/docker-passenger-meteor/master/fig-dev.yml)** file to the current folder *(insider webaap folder)*;
    - Remember to change the mongodb volume in the fig.yml file. `/path/to/db:/data/db`
    - `fig -f fig-dev.yml up` to start the services.
- Production
    - Copy **[fig.yml](https://raw.githubusercontent.com/zhouzhuojie/docker-passenger-meteor/master/fig.yml)** file to the current folder *(insider webaap folder)*;
    - Remember to change the mongodb volume in the fig.yml file. `/path/to/db:/data/db`
    - `fig up` to start the services.
- Warning
    - The fig.sh will remove `.meteor/local`, which means the default development local mongodb will be reset. We highly recommend to use the mongodb docker image instead (both are integrated in the `fig.yml` and `fig-dev.yml`). 


## Advantages
- [Passenger](https://github.com/phusion/passenger/wiki/Phusion-Passenger:-Meteor-tutorial)
- [Fig.sh](http://www.fig.sh/)
- **Docker Volume:** no need to add the code of the app, simply set the location of volume on fig.yml (webapp volume and mongodb volume) file and everything will work quickly.

## License
MIT
