#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Page Manager
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en page_manager -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/page_manager" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall page_manager -y"

# Path Auto
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools pathauto -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pathauto" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools pathauto -y"

# PDF
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en pdf -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pdf" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall pdf -y"

# PDF Reader
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en pdf_reader -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pdf_reader" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall pdf_reader -y"

# Permissions Filter
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en permissions_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/permissions_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall permissions_filter -y"

# Purge Queuer URL
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge_queuer_url -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge_queuer_url" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_queuer_url -y"

# RobotsTxt
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en robotstxt -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/robotstxt" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall robotstxt -y"

# Role Assign
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en roleassign -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/roleassign"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall roleassign -y"

# Role Delegation
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en role_delegation -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/role_delegation"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall role_delegation -y"

# S3FS
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en s3fs -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/s3fs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs -y"

# Scheduler Content Moderation Integration
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler_content_moderation_integration -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler_content_moderation_integration"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall s3fs_cors scheduler_content_moderation_integration -y"

# Security Kit
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en seckit -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/seckit" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall seckit -y"

# Share Everywhere
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en share_everywhere -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/share_everywhere"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall share_everywhere -y"

# SimpleSAML PHP Auth
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simplesamlphp_auth -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simplesamlphp_auth"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simplesamlphp_auth -y"

# Simple Sitemap
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simple_sitemap -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simple_sitemap" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simple_sitemap -y"

# Site Alert
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en site_alert -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/site_alert"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall site_alert -y"

# Siteimprove
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en siteimprove -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/siteimprove"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall siteimprove -y"

# Slack
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en slack -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/slack"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall slack -y"

# SMTP
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en smtp -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/smtp" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall smtp -y"

