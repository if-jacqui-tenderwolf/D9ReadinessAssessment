#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Easy Breadcrumb
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en easy_breadcrumb -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/easy_breadcrumb" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall easy_breadcrumb -y"

# Easy Install
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en easy_install -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/easy_install" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall easy_install -y"

# Editor Advanced Link
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en editor_advanced_link -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/editor_advanced_link" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall editor_advanced_link -y"

# Elasticsearch Connector Autocomplete
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api elasticsearch_connector_autocomp -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/elasticsearch_connector_autocomp"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall elasticsearch_connector_autocomp search_api -y"

# Embed
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en embed -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/embed" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall embed -y"

# Entity
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity -y"

# Entity Browser
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_browser entity_browser_entity_form -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_browser" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_browser_entity_form entity_browser -y"

# Entity Pager
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_pager -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_pager"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_pager -y"

# Entity Reference Tab Formatter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_ref_tab_formatter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_ref_tab_formatter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_ref_tab_formatter -y"

# Entity Reference Views Select
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_reference_views_select -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_reference_views_select"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_reference_views_select -y"

# Environment Indicator
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en environment_indicator -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/environment_indicator"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall environment_indicator -y"

# External Authentication
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en externalauth -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/externalauth" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall externalauth -y"

# External Links
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en extlink -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/extlink" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall extlink -y"

# Facebook Pixel
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en facebook_pixel -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/facebook_pixel"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall facebook_pixel -y"

# Field Block
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fieldblock -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fieldblock"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fieldblock -y"

# Field Group
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en field_group -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/field_group" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall field_group -y"

# Focal Point - unable to install
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en crop focal_point -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/focal_point"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall focal_point crop -y"

# FontAwesome
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fontawesome -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fontawesome" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fontawesome -y"

# Full Calendar View - note that to enable the recurring event feature, the sub-module Calendar Recurring Event must be installed.
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en fullcalendar_view -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/fullcalendar_view" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall fullcalendar_view -y"

# Google Tag Manager
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_tag -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_tag"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_tag -y"

# Google Translate
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en gtranslate -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/gtranslate"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall gtranslate -y"

# HTI
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en hierarchical_taxonomy_importer -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/hti"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall hierarchical_taxonomy_importer -y"

# Honeypot
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en honeypot -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/honeypot"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall honeypot -y"

# HTML Formatter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en html_formatter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/html_formatter" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall html_formatter -y"

# Image Style Quality -- note commenting out disabling modules as this caused a drush error
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en image image_style_quality -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/image_style_quality"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall image_style_quality image -y"

# Inline Entity Form
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en inline_entity_form -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/inline_entity_form" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall inline_entity_form -y"

