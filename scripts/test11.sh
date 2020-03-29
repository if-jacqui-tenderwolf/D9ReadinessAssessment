#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Contribute
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en contribute -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/contribute"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall contribute -y"

# CrazyEgg
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en crazyegg -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/crazyegg"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall crazyegg -y"

# Google Tag Manager
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_tag -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_tag"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_tag -y"

# Honeypot
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en honeypot -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/honeypot"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall honeypot -y"

# Image Style Quality -- note commenting out disabling modules as this caused a drush error
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en image image_style_quality -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/image_style_quality"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall image_style_quality image -y"

# Role Assign
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en roleassign -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/roleassign"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall roleassign -y"

# Simple GMap
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simple_gmap -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simple_gmap"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simple_gmap -y"

# Smart IP
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en smart_ip -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/smart_ip"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall smart_ip -y"

# Views Contextual Filter Or
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en views_contextual_filters_or -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/views_contextual_filters_or"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall views_contextual_filters_or -y"
