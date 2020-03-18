#!/bin/bash

# Turn on crude error handling
set -e -o pipefail

# Executes the test scans and other tests

# Block Class
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en block_class -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/block_class"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall block_class -y"

# CKEditor Table Tools Toolbar
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ckeditor_tabletoolstoolbar -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ckeditor_tabletoolstoolbar"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ckeditor_tabletoolstoolbar -y"

# CKEditor Video Detector
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ckeditor_videodetector -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ckeditor_videodetector"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ckeditor_videodetector -y"

# Display Suite version 3.x -- fails scan, probably because all D9 work is on 4.x-dev, which currently cannot be enabled with Drupal 8.8
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ds layout_discovery ds_extras ds_switch_view_mode devel ds_devel -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ds"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ds_switch_view_mode ds_devel devel ds_extras layout_discovery ds -y"
set -e -o pipefail

# Easy Install
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en easy_install -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/easy_install"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall easy_install -y"
