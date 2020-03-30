#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Layout Builder Modal
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_modal -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_modal"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_modal -y"

# Layout Builder Restrictions
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_restrictions -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_restrictions"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_restrictions -y"

# Layout Builder Styles
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_styles -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_styles"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_styles -y"

# Leaflet
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en leaflet -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/leaflet"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall leaflet -y"

# Linkit
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en linkit -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/linkit" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall linkit -y"

# Mail System
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en mailsystem -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/mailsystem" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall mailsystem -y"

# Masquerade
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en masquerade -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/masquerade" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall masquerade -y"

# Max Length
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en maxlength -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/maxlength"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall maxlength -y"

# Media Bulk Upload
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_bulk_upload -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_bulk_upload"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_bulk_upload -y"

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

# Menu Block
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_block -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_block" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_block -y"

# Menu Item Extras
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_item_extras -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_item_extras"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_item_extras -y"

# Menu Trail By Path
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_trail_by_path -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_trail_by_path"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_trail_by_path -y"

# Migrate Source CSV
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en migrate_source_csv -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/migrate_source_csv" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall migrate_source_csv -y"

# Migrate Tools
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en migrate_tools -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/migrate_tools" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall migrate_tools -y"

# Office Hours
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en office_hours -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/office_hours" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall office_hours -y"

# Optional End Date
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en optional_end_date -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/optional_end_date"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall optional_end_date -y"

# Path Auto
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools pathauto -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pathauto" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools pathauto -y"

# Permissions Filter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en permissions_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/permissions_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall permissions_filter -y"

# Purge Queuer URL
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge_queuer_url -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge_queuer_url" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_queuer_url -y"

