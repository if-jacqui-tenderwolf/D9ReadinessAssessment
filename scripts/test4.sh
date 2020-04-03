#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Menu Item Extras
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_item_extras -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_item_extras"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_item_extras -y"

# Menu Trail By Path
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_trail_by_path -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_trail_by_path"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_trail_by_path -y"

# Metatag -- currently failing on a number of fronts, commenting out will come back and troubleshoot
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en graphql metatag metatag_app_links metatag_dc metatag_dc_advanced metatag_facebook metatag_favicons metatag_google_cse metatag_google_plus metatag_hreflang metatag_mobile metatag_open_graph metatag_open_graph_products metatag_page_manager metatag_pinterest metatag_twitter_cards metatag_verification metatag_views -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/metatag" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall graphql metatag_views metatag_verification metatag_twitter_cards metatag_pinterest metatag_page_manager metatag_open_graph_products metatag_open_graph metatag_mobile metatag_hreflang metatag_google_plus metatag_google_cse metatag_favicons metatag_facebook metatag_dc_advanced metatag_dc metatag_app_links metatag -y"

# Migrate Source CSV
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en migrate_source_csv -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/migrate_source_csv" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall migrate_source_csv -y"

# Migrate Tools
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en migrate_tools -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/migrate_tools" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall migrate_tools -y"

# Module Missing Message Fixer
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en module_missing_message_fixer -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/module_missing_message_fixer" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall module_missing_message_fixer -y"

# Nice Menus
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en nice_menus -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/nice_menus" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall nice_menus -y"

# Office Hours
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en office_hours -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/office_hours" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall office_hours -y"

# Optional End Date
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en optional_end_date -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/optional_end_date"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall optional_end_date -y"

# Page Manager
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en page_manager -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/page_manager" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall page_manager -y"

# PDF
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en pdf -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pdf" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall pdf -y"

# PDF Reader
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en pdf_reader -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pdf_reader" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall pdf_reader -y"

# Path Auto
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools pathauto -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pathauto" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools pathauto -y"

# Permissions Filter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en permissions_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/permissions_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall permissions_filter -y"

# Plupload -- currently fails scan
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en plupload plupload_test -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/plupload" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall plupload_test plupload -y"

# Purge Queuer URL
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge_queuer_url -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge_queuer_url" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_queuer_url -y"

# RobotsTxt
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en robotstxt -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/robotstxt" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall robotstxt -y"

# Role Assign
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en roleassign -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/roleassign"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall roleassign -y"

# Role Delegation
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en role_delegation -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/role_delegation"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall role_delegation -y"

# S3FS
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en s3fs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/s3fs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs -y"

# Scheduler Content Moderation Integration
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler_content_moderation_integration -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler_content_moderation_integration"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs_cors scheduler_content_moderation_integration -y"

# Search API Autocomplete
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api_autocomplete -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api_autocomplete" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_autocomplete -y"

# Twig Tweak
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_tweak -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_tweak" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_tweak -y"

# Security Kit
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en seckit -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/seckit" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall seckit -y"

# Share Everywhere
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en share_everywhere -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/share_everywhere"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall share_everywhere -y"

# Simple GMap
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simple_gmap -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simple_gmap"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simple_gmap -y"

# SimpleSAML PHP Auth
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simplesamlphp_auth -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simplesamlphp_auth"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simplesamlphp_auth -y"

# Simple Sitemap
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simple_sitemap -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simple_sitemap" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simple_sitemap -y"
