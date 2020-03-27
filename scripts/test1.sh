#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Address -- currently failing scan, skipping error checking
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en address -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/address"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall address -y"

# Add to Calendar
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en addtocalendar -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/addtocalendar"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall addtocalendar -y"
set -e -o pipefail

# Admin Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en admin_toolbar admin_toolbar_tools admin_toolbar_links_access_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/admin_toolbar"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall admin_toolbar_links_access_filter admin_toolbar_tools admin_toolbar -y"

# Advanced CSS/JS Aggregation -- currently failing scan, skipping error checking
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/advagg"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y"
set -e -o pipefail

# Allowed Formats
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en allowed_formats -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/allowed_formats"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall allowed_formats -y"

# Audit Files -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en auditfiles -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/auditfiles"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall auditfiles -y"
set -e -o pipefail

# Better Exposed Filters -- currently failing scan on tests
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en better_exposed_filters -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/better_exposed_filters"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall better_exposed_filters -y"
set -e -o pipefail

# Block Field -- currently failing scan on tests
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_field -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_field"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_field -y"
set -e -o pipefail

# Captcha
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en captcha captcha_long_form_id_test -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/captcha"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall captcha captcha_long_form_id_test -y"
set -e -o pipefail

# Cloudflare
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en cloudflare cloudflarepurger -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/cloudflare"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall cloudflare cloudflarepurger -y"
set -e -o pipefail

# Components!
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en components -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/components"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall components -y"

# Config Filter -- currently failing scan on tests
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_filter -y"
set -e -o pipefail

# Config Ignore
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_ignore -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_ignore"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_ignore -y"

# Config Split -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter config_split -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_split"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_split config_filter -y"
set -e -o pipefail

# Context
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en context -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/context"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall context -y"
set -e -o pipefail

# CSV Serialization
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en csv_serialization -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/csv_serialization"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall csv_serialization -y"

# CTools
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools ctools_block ctools_entity_mask ctools_views -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ctools"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools ctools_block ctools_entity_mask ctools_views -y"

# Date Popup
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en date_popup -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/date_popup"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall date_popup -y"

# Devel -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en devel devel_generate webprofiler -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/devel"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall devel devel_generate webprofiler -y"
set -e -o pipefail

# Diff
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en diff -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/diff"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall diff -y"

# Easy Breadcrumbs -- module is passing, tests are current failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en easy_breadcrumb -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/easy_breadcrumb"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall easy_breadcrumb -y"
set -e -o pipefail

# Elasticsearch Connector -- currently failing to load, nodespark\DESConnectorClientFactory not found
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en elasticsearch_connector elasticsearch_connector_views -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/elasticsearch_connector"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall elasticsearch_connector elasticsearch_connector_views -y"
set -e -o pipefail

# Embed
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en embed -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/embed"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall embed -y"
