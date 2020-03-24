#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Add To Any
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en addtoany -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/addtoany"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall addtoany -y"

# Date Recur Interactive
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en date_recur date_recur_interactive -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/date_recur_interactive"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall date_recur_interactive date_recur -y"

# Menu Trail By Path
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_trail_by_path -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_trail_by_path"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_trail_by_path -y"

# Optional End Date
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en optional_end_date -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/optional_end_date"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall optional_end_date -y"

# Permissions Filter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en permissions_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/permissions_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall permissions_filter -y"

# S3FS
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en s3fs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/s3fs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs -y"

# S3FS Cors
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en token s3fs s3fs_cors -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/s3fs_cors"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs_cors s3fs token -y"
set -e -o pipefail

# Scheduler Content Moderation Integration
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler_content_moderation_integration -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler_content_moderation_integration"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs_cors scheduler_content_moderation_integration -y"

# Siteimprove
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en siteimprove -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/siteimprove"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall siteimprove -y"

# Twig Field Value
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_field_value -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_field_value"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_field_value -y"

# User Default Page
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en user_default_page -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/user_default_page"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall user_default_page -y"
set -e -o pipefail

# Views Taxonomy Term Name Depth
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_taxonomy_term_name_depth -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_taxonomy_term_name_depth"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_taxonomy_term_name_depth -y"
