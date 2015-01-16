# Docker Image for Meteor production and development

Simple image for developing app using **Meteor+Passenger+Fig**, with a volume shared between the container and the host system.

## Usage
- Install Fig: [http://www.fig.sh/install.html](http://www.fig.sh/install.html);
- Create a folder named **webapp** *(meteor create webapp)*; then `cd weapp`.
- Development
    - Copy [fig-dev.yml](https://bitbucket.org/jadsonlourenco/docker-meteor-dev/raw/7072f84f7ec3e42aad6aa419a1b6bce587df0d47/fig.yml) file to the current folder *(insider webaap folder)*;
    - `fig -f fig-dev.yml up` to start the services.
- Production
    - Copy [fig.yml](https://bitbucket.org/jadsonlourenco/docker-meteor-dev/raw/7072f84f7ec3e42aad6aa419a1b6bce587df0d47/fig.yml) file to the current folder *(insider webaap folder)*;
    - `fig up` to start the services.
- Warning
    - The fig.sh will remove .meteor/local, which means the default development local mongodb will be reset. We highly recommend to use the mongodb docker instead. Remember to change the mongodb volume in the fig.yml file.

## Advantages
- [Passenger](https://github.com/phusion/passenger/wiki/Phusion-Passenger:-Meteor-tutorial)
- [Fig.sh](http://www.fig.sh/)
- **Docker Volume:** no need to add the code of the app, simply set the location of volume on fig.yml (webapp volume and mongodb volume) file and everything will work quickly.

## License
MIT
