# drupal8-docker-start
  These are a bunch of scripts to help with creating a development environment for Drupal 8 and Docker on Mac OSX.

# Prerequisites

- Install [Docker for Mac](https://www.docker.com/docker-mac)
- Install docker-sync - 
```gem install docker-sync```

# How to run
- in Terminal run ```bash init.sh```

# Behind the scenes
- the scripts will:
  - create a directory for database so that if you kill docker you will not lose the db 
  - downloads Drupal8 latest
  - pulls (if needed) and installs all required Docker images
  - runs the images 
  - performs a wait so that the files will be copied across from volumes
  - docker-sync will remain in listen mode and will sync files as they get changed
  - opens the start page of the Drupal site
  
  #Debugging
  I use Kitematic to investigate containers. If a container fails to run make note of the errors and make sure they are not already running.(this was one of my problems, I forgot it running in a different project and two similar services were not able to run at the same time on same ports).
  
  If you're feeling geeky use these commands to investigate:
  ```docker ps --all```
  ```docker images --all```
  
  [Docker reference](https://docs.docker.com/engine/reference/commandline/ps/)