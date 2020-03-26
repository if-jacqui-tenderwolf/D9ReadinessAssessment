#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Administer Users By Role
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en administerusersbyrole -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/administerusersbyrole"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall administerusersbyrole -y"

# Anchor Link
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en anchor_link -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/anchor_link"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall anchor_link -y"

# Autocomplete Deluxe
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en autocomplete_deluxe -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/autocomplete_deluxe"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall autocomplete_deluxe -y"

# Background Image Formatter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en bg_image_formatter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/bg_image_formatter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall bg_image_formatter -y"

# Context Active Trail
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en context_active_trail -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/context_active_trail"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall context_active_trail -y"

# Default Content
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en context default_content -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/default_content"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall default_context content -y"

# Field Block
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fieldblock -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fieldblock"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fieldblock -y"
set -e -o pipefail

# FontAwesome icon Picker -- skipping for now because of issues using Composer to load module, see spreadsheet notes
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fontawesome_iconpicker -y" && \
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fontawesome_iconpicker" && \
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fontawesome_iconpicker -y" && \

# FontAwesome Menu Icons
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en libraries fontawesome fontawesome_menu_icons -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fontawesome_menu_icons" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fontawesome_menu_icons fontawesome libraries -y"
set -e -o pipefail
