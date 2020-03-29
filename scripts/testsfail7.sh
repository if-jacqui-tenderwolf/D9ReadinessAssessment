#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Better Social Sharing Buttons
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en better_social_sharing_buttons -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/better_social_sharing_buttons"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall better_social_sharing_buttons -y"
set -e -o pipefail

# DropzoneJS
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en dropzonejs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/dropzonejs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall dropzonejs -y"
set -e -o pipefail

# Entity Update - this module needs attention. It installed itself in the wrong place and then created problems. The patch doesn't work. 
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_update -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_update"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_update -y"
set -e -o pipefail

# Geofield
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en geofield -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/geofield"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall geofield -y"
set -e -o pipefail

# Media Entity Actions
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en media_entity_actions -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/media_entity_actions"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall media_entity_actions -y"
set -e -o pipefail

# Quick Node Clone
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en quick_node_clone -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/quick_node_clone"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall quick_node_clone -y"
set -e -o pipefail

# Sitemap
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en sitemap -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/sitemap"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall sitemap -y"
set -e -o pipefail

# S3FS Cors
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en token s3fs s3fs_cors -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/s3fs_cors"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs_cors s3fs token -y"
set -e -o pipefail

# User Default Page
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en user_default_page -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/user_default_page"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall user_default_page -y"
set -e -o pipefail