#!/bin/bash

# Turn on crude error handling
set -e -o pipefail

# Executes the test scans and other tests

# Site Alert
echo "site_alert"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en site_alert -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/site_alert"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall site_alert -y"

# Siteimprove
echo "siteimprove"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en siteimprove -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/siteimprove"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall siteimprove -y"

# Sitemap
echo "sitemap"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en sitemap -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/sitemap"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall sitemap -y"

# Slack
echo "slack"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en slack -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/slack"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall slack -y"

# Smart IP
echo "smart_ip"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en smart_ip -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/smart_ip"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall smart_ip -y"

# SMTP
echo "smtp"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en smtp -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/smtp" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall smtp -y"

# Social Media Links
echo "social_media_links"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en social_media_links social_media_links_field -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/social_media_links" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall social_media_links_field social_media_links -y"

# SVG Image
echo "svg_image"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en svg_image responsive_image svg_image_responsive -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/svg_image" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall svg_image_responsive responsive_image svg_image -y"

# Tab Toolbar
echo "tab_toolbar"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tab_toolbar -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tab_toolbar"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tab_toolbar -y"

# TAC Lite
echo "tac_lite"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en tac_lite -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/tac_lite"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall tac_lite -y"

# Taxonomy Access Fix
echo "taxonomy_access_fix"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en taxonomy_access_fix -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/taxonomy_access_fix"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall taxonomy_access_fix -y"

# Text Resize
echo "text_resize"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_resize -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_resize"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_resize -y"

# Text with Title
echo "text_with_title"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en text_with_title -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/text_with_title"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall text_with_title -y"

# Token
echo "token"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en token -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/token" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall token -y"

# Toolbar Menu
echo "toolbar_menu"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en toolbar_menu -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/toolbar_menu"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall toolbar_menu -y"

# Twig Field Value
echo "twig_field_value"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_field_value -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_field_value"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_field_value -y"

# Twig Tweak
echo "twig_tweak"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_tweak -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_tweak" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_tweak -y"

# Twitter Block
echo "twitter_block"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twitter_block -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twitter_block"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twitter_block -y"

# Unlimited Number
echo "unlimited_number"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en unlimited_number -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/unlimited_number"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall unlimited_number -y"

# Video Embed Facebook
echo "video_embed_facebook"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en video_embed_facebook -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/video_embed_facebook" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall video_embed_facebook -y"

# Video Embed Field
echo "video_embed_field"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en video_embed_field video_embed_media video_embed_wysiwyg vem_migrate_oembed -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/video_embed_field" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall vem_migrate_oembed video_embed_wysiwyg video_embed_media video_embed_field -y"

# Views Autocomplete Filters -- depends on search_api to complete tests
echo "views_autocomplete_filters"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api views_autocomplete_filters -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_autocomplete_filters" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_autocomplete_filters search_api -y"

# Views Contextual Filter Or
echo "views_contextual_filters_or"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_contextual_filters_or -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_contextual_filters_or"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_contextual_filters_or -y"

# Views Data Export
echo "views_data_export"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_data_export -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_data_export" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_data_export -y"

# Views Infinite Scroll
echo "views_infinite_scroll"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_infinite_scroll -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_infinite_scroll"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_infinite_scroll -y"

# Views Reference
echo "viewsreference"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en viewsreference -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/viewsreference" && \
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall viewsreference -y"

# Views Timeline JS
echo "views_timelinejs"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_timelinejs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_timelinejs"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_timelinejs -y"

# Youtube
echo "youtube"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en youtube -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/youtube"
# docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall youtube -y"
