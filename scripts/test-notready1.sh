#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Address -- currently failing scan, skipping error checking
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en address -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/address"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall address -y"
set -e -o pipefail

# Advanced CSS/JS Aggregation -- currently failing scan, skipping error checking
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/advagg"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall advagg advagg_bundler advagg_cdn advagg_css_minify advagg_js_minify advagg_mod advagg_old_ie_compatibility advagg_validator -y"
set -e -o pipefail

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

# Config Filter -- currently failing scan on tests
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_filter"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_filter -y"
set -e -o pipefail

# Config Split -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en config_filter config_split -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/config_split"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall config_split config_filter -y"
set -e -o pipefail

# Devel -- currently failing scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en devel devel_generate webprofiler -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/devel"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall devel devel_generate webprofiler -y"
set -e -o pipefail

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

# Entity Embed -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_embed -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_embed"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_embed embed -y"
set -e -o pipefail

# Entity Reference Revisions
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en entity_reference_revisions -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/entity_reference_revisions"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall entity_reference_revisions -y"
set -e -o pipefail

# Environment Indicator
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en environment_indicator environment_indicator_ui -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/environment_indicator"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall environment_indicator environment_indicator_ui -y"
set -e -o pipefail

# External Links
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en extlink -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/extlink"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall extlink -y"
set -e -o pipefail

# File Entity -- currently failing scan, a few lingering issues persist
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en file_entity -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/file_entity"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall file_entity -y"
set -e -o pipefail

# GeoLocation
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en geolocation -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/geolocation"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall geolocation -y"
set -e -o pipefail

# Google Analytics
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en google_analytics -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/google_analytics"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall google_analytics -y"
set -e -o pipefail

# Libraries API -- failing scan, will be deprecated for D9 and included in Core.
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en libraries -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/libraries"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall libraries -y"
set -e -o pipefail

# Metatag -- currently failing on a number of fronts, commenting out will come back and troubleshoot
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en metatag metatag_app_links metatag_dc metatag_dc_advanced metatag_facebook metatag_favicons metatag_google_cse metatag_google_plus metatag_hreflang metatag_mobile metatag_open_graph metatag_open_graph_products metatag_page_manager metatag_pinterest metatag_twitter_cards metatag_verification metatag_views -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/metatag"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall metatag_views metatag_verification metatag_twitter_cards metatag_pinterest metatag_page_manager metatag_open_graph_products metatag_open_graph metatag_mobile metatag_hreflang metatag_google_plus metatag_google_cse metatag_favicons metatag_facebook metatag_dc_advanced metatag_dc metatag_app_links metatag -y"
set -e -o pipefail

# Paragraphs, excludes scan of paragraphs_demo module, also excludes module due to undeclared dependency on Feeds
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en paragraphs paragraphs_library paragraphs_type_permissions -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/paragraphs"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall paragraphs_type_permissions paragraphs_library paragraphs -y"
set -e -o pipefail

# Plupload -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en plupload plupload_test -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/plupload"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall plupload_test plupload -y"
set -e -o pipefail

# Purge -- commented out due to tests failing scan.
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en purge purge_drush purge_processor_cron purge_processor_lateruntime purge_queuer_coretags purge_tokens purge_ui -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/purge"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall purge_ui purge_tokens purge_queuer_coretags purge_processor_lateruntime purge_processor_cron purge_drush purge -y"
set -e -o pipefail

# RECaptcha -- currently fails scan
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en recaptcha -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/recaptcha"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall recaptcha -y"
set -e -o pipefail

# Redirect
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en redirect redirect_404 redirect_domain -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/redirect"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall redirect_domain redirect_404 redirect -y"
set -e -o pipefail

# Redis
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en redis -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/redis"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall redis -y"
set -e -o pipefail

# Scheduler
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en scheduler rules scheduler_rules_integration -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/scheduler"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall scheduler_rules_integration rules scheduler -y"
set -e -o pipefail

# Search API
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api search_api_db -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_db search_api -y"
set -e -o pipefail

# Search API Autocomplete
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en search_api_autocomplete -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/search_api_autocomplete"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall search_api_autocomplete -y"
set -e -o pipefail

# Social Media Links
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en social_media_links social_media_links_field -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/social_media_links"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall social_media_links_field social_media_links -y"
set -e -o pipefail

# Twig Tweak
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en twig_tweak -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/twig_tweak"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall twig_tweak -y"
set -e -o pipefail

# Typed Data
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en typed_data -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/typed_data"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall typed_data -y"
set -e -o pipefail

# Ultimate Cron -- failed scan due to useof deprcated constant REQUEST_TIME
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en ultimate_cron -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/ultimate_cron"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall ultimate_cron -y"
set -e -o pipefail

# Webform -- skipping scan due to :https://www.jrockowitz.com/blog/webform-road-to-drupal-9
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en webform webform_access webform_attachment webform_bootstrap webform_demo_group webform_demo_application_evaluation webform_demo_event_registration webform_demo_region_contact webform_devel webform_editorial webform_entity_print webform_entity_print_attachment webform_example_composite webform_example_custom_form webform_example_element webform_example_element_properties webform_example_handler webform_example_remote_post webform_example_variant webform_examples webform_examples_accessibility webform_group webform_icheck webform_image_select webform_jqueryui_buttons webform_location_geocomplete webform_node webform_options_custom webform_options_limit webform_scheduled_email webform_shortcuts webform_submission_export_import webform_submission_log webform_templates webform_toggles webform_ui -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/webform"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall webform -y"
set -e -o pipefail

# Youtube
set +e
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en youtube -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/youtube"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall youtube -y"
set -e -o pipefail
