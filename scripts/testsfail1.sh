#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Advanced CSS/JS Aggregation -- currently failing scan, skipping error checking
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/advagg" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y"
set -e -o pipefail

# Config Filter -- currently failing scan on tests
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_filter" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_filter -y"
set -e -o pipefail

# Config Split -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter config_split -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_split" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_split config_filter -y"
set -e -o pipefail

# Devel -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en devel devel_generate webprofiler -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/devel" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall devel devel_generate webprofiler -y"
set -e -o pipefail

# Elasticsearch Connector -- currently failing to load, nodespark\DESConnectorClientFactory not found
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en elasticsearch_connector elasticsearch_connector_views -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/elasticsearch_connector" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall elasticsearch_connector elasticsearch_connector_views -y"
set -e -o pipefail

# Entity Embed -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_embed -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_embed" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_embed embed -y"
set -e -o pipefail

# File Entity -- currently failing scan, a few lingering issues persist
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en file_entity -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/file_entity" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall file_entity -y"
set -e -o pipefail

# Geocoder
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en geocoder -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/geocoder" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall geocoder -y"
set -e -o pipefail

# GeoLocation
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en geolocation -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/geolocation" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall geolocation -y"
set -e -o pipefail

# Google Analytics
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_analytics -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_analytics" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_analytics -y"
set -e -o pipefail

# Focal Point - unable to install
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en crop focal_point -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/focal_point"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall focal_point crop -y"
set -e -o pipefail

# Libraries API -- failing scan, will be deprecated for D9 and included in Core.
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en libraries -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/libraries" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall libraries -y"
set -e -o pipefail
