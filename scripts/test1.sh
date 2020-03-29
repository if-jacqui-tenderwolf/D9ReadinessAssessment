#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Address -- currently failing scan, skipping error checking
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en address -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/address" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall address -y"

# Add to Calendar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en addtocalendar -y"  && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/addtocalendar" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall addtocalendar -y"

# Admin Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en admin_toolbar admin_toolbar_tools admin_toolbar_links_access_filter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/admin_toolbar" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall admin_toolbar_links_access_filter admin_toolbar_tools admin_toolbar -y"

# Allowed Formats
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en allowed_formats -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/allowed_formats" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall allowed_formats -y"

# Audit Files
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en auditfiles -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/auditfiles" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall auditfiles -y"

# Better Exposed Filters -- currently failing scan on tests
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en better_exposed_filters -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/better_exposed_filters" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall better_exposed_filters -y"

# Block Field -- currently failing scan on tests
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_field -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_field" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_field -y"

# Captcha
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en captcha captcha_long_form_id_test -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/captcha" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall captcha captcha_long_form_id_test -y"

# Cloudflare
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en cloudflare cloudflarepurger -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/cloudflare" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall cloudflare cloudflarepurger -y"

# Components!
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en components -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/components" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall components -y"

# Config Ignore
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_ignore -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_ignore" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_ignore -y"

# Context
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en context -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/context" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall context -y"

# CSV Serialization
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en csv_serialization -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/csv_serialization" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall csv_serialization -y"

# CTools
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools ctools_block ctools_entity_mask ctools_views -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ctools" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools ctools_block ctools_entity_mask ctools_views -y"

# Date Popup
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en date_popup -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/date_popup" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall date_popup -y"

# Diff
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en diff -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/diff" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall diff -y"

# Easy Breadcrumb
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en easy_breadcrumb -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/easy_breadcrumb" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall easy_breadcrumb -y"

# Embed
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en embed -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/embed" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall embed -y"
