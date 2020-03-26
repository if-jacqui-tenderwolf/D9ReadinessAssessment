#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

#
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en if_varnish_purge_tags -y"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/varnish_purge_tags"
#docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall if_varnish_purge_tags -y"

