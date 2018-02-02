#!/usr/bin/env bash

# if the project is not initialised
if [ ! -d "database" ]; then
  mkdir database
  composer create-project drupal-composer/drupal-project:8.x-dev drupal8 --stability dev --no-interaction
fi

bash start.sh
