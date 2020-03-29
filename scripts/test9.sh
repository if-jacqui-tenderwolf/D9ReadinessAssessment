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

# Media Entity Audio
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_entity_audio -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_entity_audio"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_entity_audio -y"

# Media Entity Browser
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_entity_browser -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_entity_browser"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_entity_browser -y"

# Menu Admin Per Menu
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_admin_per_menu -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_admin_per_menu"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_admin_per_menu -y"

# Role Delegation
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en role_delegation -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/role_delegation"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall role_delegation -y"

# Share Everywhere
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en share_everywhere -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/share_everywhere"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall share_everywhere -y"

# Tab Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tab_toolbar -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tab_toolbar"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tab_toolbar -y"

# Taxonomy Access Fix
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en taxonomy_access_fix -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/taxonomy_access_fix"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall taxonomy_access_fix -y"

# Text with Title
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_with_title -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_with_title"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_with_title -y"
