#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Draggable Views
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en draggableviews -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/draggableviews"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall draggableviews -y"
