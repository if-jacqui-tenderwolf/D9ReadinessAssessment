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

# Courier
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en courier -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/courier"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall courier -y"
set -e -o pipefail

# Date Recur
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en date_recur -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/date_recur"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall date_recur -y"
set -e -o pipefail

# Dynamic Entity Reference
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en dynamic_entity_reference -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/dynamic_entity_reference"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall dynamic_entity_reference -y"

# Editor File
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en editor_file -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/editor_file"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall editor_file -y"
set -e -o pipefail

# Entity Clone
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_clone -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_clone"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_clone -y"
set -e -o pipefail

# Entity Reference Views Select
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_reference_views_select -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_reference_views_select"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_reference_views_select -y"

# Group
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en group -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/group"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall group -y"
set -e -o pipefail

# Google Translate
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en gtranslate -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/gtranslate"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall gtranslate -y"

# Insert
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en insert -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/insert"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall insert -y"
set -e -o pipefail

# Permissions by Term - drupal-check errors out at 25%
# set +e
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en permissions_by_term -y"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/permissions_by_term"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall permissions_by_term -y"
# set -e -o pipefail

# RNG - Events and Registrations
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en rng -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/rng"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall rng -y"
set -e -o pipefail

# RNG Contact
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en rng_contact -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/rng_contact"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall rng_contact -y"
set -e -o pipefail

# RNG Quick
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_exclude rng_quick -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/rng_quick"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall rng_quick search_exclude -y"
set -e -o pipefail

# Search Exclude
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_exclude -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_exclude"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_exclude -y"
set -e -o pipefail

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

# Views Entity Operation Access (VEOA)
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en veoa -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/veoa"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall veoa -y"
set -e -o pipefail

# Views Advanced Routing
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_advanced_routing -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_advanced_routing"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_advanced_routing -y"
set -e -o pipefail
