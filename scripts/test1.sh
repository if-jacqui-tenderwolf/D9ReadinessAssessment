#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Address
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en address -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/address" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall address -y"

# Add To Any
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en addtoany -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/addtoany" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall addtoany -y"

# Add to Calendar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en addtocalendar -y"  && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/addtocalendar" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall addtocalendar -y"

# Admin Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en admin_toolbar admin_toolbar_tools admin_toolbar_links_access_filter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/admin_toolbar" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall admin_toolbar_links_access_filter admin_toolbar_tools admin_toolbar -y"

# Administer Users By Role
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en administerusersbyrole -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/administerusersbyrole" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall administerusersbyrole -y"

# Allowed Formats
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en allowed_formats -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/allowed_formats" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall allowed_formats -y"

# Anchor Link
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en anchor_link -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/anchor_link" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall anchor_link -y"

# Audit Files
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en auditfiles -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/auditfiles" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall auditfiles -y"

# Autocomplete Deluxe
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en autocomplete_deluxe -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/autocomplete_deluxe" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall autocomplete_deluxe -y"

# Background Image Formatter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en bg_image_formatter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/bg_image_formatter" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall bg_image_formatter -y"

# Better Exposed Filters
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en better_exposed_filters -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/better_exposed_filters" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall better_exposed_filters -y"

# Better Social Sharing Buttons
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en better_social_sharing_buttons -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/better_social_sharing_buttons" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall better_social_sharing_buttons -y"

# Block Blacklist
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_blacklist -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_blacklist" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_blacklist -y"

# Block Class
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_class -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_class" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_class -y"

# Block Exclude Pages
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_exclude_pages -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_exclude_pages" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_exclude_pages -y"

# Block Field
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_field -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_field" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_field -y"

# Captcha
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en captcha captcha_long_form_id_test -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/captcha" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall captcha captcha_long_form_id_test -y"

# CKEditor Table Tools Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ckeditor_tabletoolstoolbar -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ckeditor_tabletoolstoolbar" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ckeditor_tabletoolstoolbar -y"

# CKEditor Video Detector
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ckeditor_videodetector -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ckeditor_videodetector" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ckeditor_videodetector -y"

# Cloudflare
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en cloudflare cloudflarepurger -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/cloudflare" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall cloudflare cloudflarepurger -y"

# Components!
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en components -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/components" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall components -y"

# Config Filter -- currently failing scan on tests
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter config_filter_split_test config_filter_test -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_filter" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_filter_split_test config_filter_test config_filter -y"

# Config Split -- currently failing scan
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter config_split -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_split" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_split config_filter -y"

# Config Ignore
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_ignore -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_ignore" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_ignore -y"

# Content Moderation Notifications
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en content_moderation_notifications -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/content_moderation_notifications"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall content_moderation_notifications -y"
