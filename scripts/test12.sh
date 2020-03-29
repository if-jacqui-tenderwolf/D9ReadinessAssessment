#!/bin/bash

# Turn on crude error handling
set -e -o pipefail
 
# Executes the test scans and other tests

# Facebook Pixel
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en facebook_pixel -y"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/facebook_pixel"
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall facebook_pixel -y"

# Video Embed Facebook
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush en video_embed_facebook -y" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drupal-check modules/contrib/video_embed_facebook" && \
docker-compose exec php7.3 /bin/sh -c "cd /var/www/html/docroot; ../bin/drush pm-uninstall video_embed_facebook -y"
