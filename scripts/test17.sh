#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Drupal Slider
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en drupal_slider -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/drupal_slider"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall drupal_slider -y"
set -e -o pipefail

# Layout Builder Modal
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_modal -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_modal"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_modal -y"

# Layout Builder Styles
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en layout_builder_styles -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/layout_builder_styles"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall layout_builder_styles -y"

# Views Timeline JS
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_timelinejs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_timelinejs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_timelinejs -y"
