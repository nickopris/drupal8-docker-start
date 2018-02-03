#!/usr/bin/env bash
timeout () {
    tput sc
    time=$1; while [ $time -ge 0 ]; do
        tput rc; tput el
        printf "$2" $time
        ((time--))
        sleep 1
    done
    tput rc; tput ed;
}

docker-compose up -d
docker-sync start
timeout 3 "Waiting %s seconds for files to be copied across..."
echo ""
echo "Your development website is up and running."
echo ""
echo "Check this link for all endpoints: https://github.com/wodby/docker4drupal/blob/master/docs/domains.md"
open http://portainer.drupal.docker.localhost:8000/#/containers/
open http://drupal.docker.localhost:8000
echo "Done"
