#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# IF Varnish Purge Tags
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en if_varnish_purge_tags -y"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/varnish_purge_tags"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall if_varnish_purge_tags -y"

# Views Reference
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en viewsreference -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/viewsreference"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall viewsreference -y"

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
