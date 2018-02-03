#!/usr/bin/env bash

# if the project is not initialised
if [ ! -d "database" ]; then
  mkdir database
  mkdir assets
  touch assets/add_your_sql_file_here.txt

  composer create-project drupal-composer/drupal-project:8.x-dev drupal8 --stability dev --no-interaction

  # Add contrib repos based on project need
  #cd drupal8
  #composer require drupal/bootstrap
  #composer require drupal/linkit
  #composer require 'drupal/backup_migrate:^4.0'

  # Add a custom module
  #composer config repositories.nicktest git "https://github.com/nickopris/generic-color"
  #composer require "nicktest/genericcolor":master@dev


  #cd ../
fi

bash start.sh
