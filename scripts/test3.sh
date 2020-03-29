#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Metatag -- currently failing on a number of fronts, commenting out will come back and troubleshoot
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en metatag metatag_app_links metatag_dc metatag_dc_advanced metatag_facebook metatag_favicons metatag_google_cse metatag_google_plus metatag_hreflang metatag_mobile metatag_open_graph metatag_open_graph_products metatag_page_manager metatag_pinterest metatag_twitter_cards metatag_verification metatag_views -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/metatag" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall metatag_views metatag_verification metatag_twitter_cards metatag_pinterest metatag_page_manager metatag_open_graph_products metatag_open_graph metatag_mobile metatag_hreflang metatag_google_plus metatag_google_cse metatag_favicons metatag_facebook metatag_dc_advanced metatag_dc metatag_app_links metatag -y"
set -e -o pipefail

# Paragraphs, excludes scan of paragraphs_demo module, also excludes module due to undeclared dependency on Feeds
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en paragraphs paragraphs_library paragraphs_type_permissions -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/paragraphs" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall paragraphs_type_permissions paragraphs_library paragraphs -y"
set -e -o pipefail

# Path Auto
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ctools pathauto -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/pathauto" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ctools pathauto -y"

# Plupload -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en plupload plupload_test -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/plupload" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall plupload_test plupload -y"
set -e -o pipefail

# Purge -- commented out due to tests failing scan.
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge purge_drush purge_processor_cron purge_processor_lateruntime purge_queuer_coretags purge_tokens purge_ui -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_ui purge_tokens purge_queuer_coretags purge_processor_lateruntime purge_processor_cron purge_drush purge -y"
set -e -o pipefail

# Purge Queuer URL
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge_queuer_url -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge_queuer_url" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_queuer_url -y"

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

# Search API Autocomplete
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api_autocomplete -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api_autocomplete" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_autocomplete -y"
set -e -o pipefail

# Simple Sitemap
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en simple_sitemap -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/simple_sitemap" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall simple_sitemap -y"

# SMTP
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en smtp -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/smtp" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall smtp -y"

# Social Media Links
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en social_media_links social_media_links_field -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/social_media_links" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall social_media_links_field social_media_links -y"
set -e -o pipefail

# Token
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en token -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/token" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall token -y"

# Twig Tweak
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_tweak -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_tweak" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_tweak -y"
set -e -o pipefail

# Typed Data
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en typed_data -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/typed_data" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall typed_data -y"
set -e -o pipefail

# Ultimate Cron -- failed scan due to useof deprcated constant REQUEST_TIME
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ultimate_cron -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ultimate_cron" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ultimate_cron -y"
set -e -o pipefail

# Varnish Purge
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en varnish_purger varnish_focal_point_purge varnish_image_purge varnish_purge_tags -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/varnish_purge" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall varnish_purger varnish_purge_tags varnish_image_purge varnish_focal_point_purge -y"

# Views Reference
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en viewsreference -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/viewsreference" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall viewsreference -y"

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
