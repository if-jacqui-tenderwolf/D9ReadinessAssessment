#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Ajax View Demo - module doesn't exist on the Drupal project
# set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ajax_view_demo -y"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ajax_view_demo"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ajax_view_demo -y"
# set -e -o pipefail

# Dynamic Entity Reference
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en dynamic_entity_reference -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/dynamic_entity_reference"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall dynamic_entity_reference -y"

# Entity Reference Views Select
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_reference_views_select -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_reference_views_select"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_reference_views_select -y"

# Google Translate
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en gtranslate -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/gtranslate"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall gtranslate -y"

# TAC Lite
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tac_lite -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tac_lite"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tac_lite -y"

# Text Resize
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_resize -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_resize"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_resize -y"

# Unlimited Number
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en unlimited_number -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/unlimited_number"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall unlimited_number -y"
