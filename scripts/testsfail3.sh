#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Migrate File
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en migrate_file -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/migrate_file"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall migrate_file -y"
set -e -o pipefail

# Menu Position
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en menu_position -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/menu_position"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall menu_position -y"
set -e -o pipefail

# Paragraphs, excludes scan of paragraphs_demo module, also excludes module due to undeclared dependency on Feeds
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en paragraphs paragraphs_library paragraphs_type_permissions -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/paragraphs" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall paragraphs_type_permissions paragraphs_library paragraphs -y"
set -e -o pipefail

# Protocol Relative URLs
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en protocol_relative_urls -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/protocol_relative_urls"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall protocol_relative_urls -y"
set -e -o pipefail

# Protected Pages
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en protected_pages -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/protected_pages"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall protected_pages -y"
set -e -o pipefail

# Purge -- commented out due to tests failing scan.
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge purge_drush purge_processor_cron purge_processor_lateruntime purge_queuer_coretags purge_tokens purge_ui -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_ui purge_tokens purge_queuer_coretags purge_processor_lateruntime purge_processor_cron purge_drush purge -y"
set -e -o pipefail

# RECaptcha -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en recaptcha -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/recaptcha" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall recaptcha -y"
set -e -o pipefail

# Redirect
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en redirect redirect_404 redirect_domain -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/redirect" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall redirect_domain redirect_404 redirect -y"
set -e -o pipefail

# Redis
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en redis -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/redis" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall redis -y"
set -e -o pipefail

# Scheduler
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler rules scheduler_rules_integration -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall scheduler_rules_integration rules scheduler -y"
set -e -o pipefail

# Search API
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api search_api_db -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_db search_api -y"
set -e -o pipefail

# Structure Sync
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en structure_sync -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/structure_sync"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall structure_sync -y"
set -e -o pipefail

# Typed Data
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en typed_data -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/typed_data" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall typed_data -y"
set -e -o pipefail

# Ultimate Cron -- failed scan due to useof deprecated constant REQUEST_TIME
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ultimate_cron -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ultimate_cron" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ultimate_cron -y"
set -e -o pipefail

# Webform -- skipping scan due to :https://www.jrockowitz.com/blog/webform-road-to-drupal-9
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en webform webform_access webform_attachment webform_bootstrap webform_demo_group webform_demo_application_evaluation webform_demo_event_registration webform_demo_region_contact webform_devel webform_editorial webform_entity_print webform_entity_print_attachment webform_example_composite webform_example_custom_form webform_example_element webform_example_element_properties webform_example_handler webform_example_remote_post webform_example_variant webform_examples webform_examples_accessibility webform_group webform_icheck webform_image_select webform_jqueryui_buttons webform_location_geocomplete webform_node webform_options_custom webform_options_limit webform_scheduled_email webform_shortcuts webform_submission_export_import webform_submission_log webform_templates webform_toggles webform_ui -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/webform" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall webform -y"
set -e -o pipefail

# Youtube
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en youtube -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/youtube" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall youtube -y"
set -e -o pipefail
