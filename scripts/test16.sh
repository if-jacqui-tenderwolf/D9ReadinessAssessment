#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Flood Unblock
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en flood_unblock -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/flood_unblock"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall flood_unblock -y"

# Key Value Field
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en key_value_field -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/key_value_field"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall key_value_field -y"
