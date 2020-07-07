#!/bin/bash

# docker-compose exec php7.3 /bin/sh -c "$REPO_ROOT/bin/drupal-check $1 2>/dev/null"

REPO_ROOT="/home/jacquit/IF/D9ReadinessAssessment"
DOCROOT="$REPO_ROOT/docroot"

check-projects() {
  PROJECT_TYPE=$1
  PATH_TO_PROJECTS=$2
  declare -a PROJECTS_TO_REPORT

  cd $PATH_TO_PROJECTS
  for i in $(ls -d */); do
    PROJECT=${i%%/}
    echo "Checking $PROJECT..."
    "$REPO_ROOT/bin/drupal-check" --no-interaction --memory-limit=-1 "$PROJECT" 2>/dev/null
    DRUPAL_CHECK_RESULT=$?
    if [ $DRUPAL_CHECK_RESULT -ne 0 ]; then
      PROJECTS_TO_REPORT+=($PROJECT)
    fi
  done

  if [ ${#PROJECTS_TO_REPORT[@]} -eq 0 ]; then
    echo "All $PROJECT_TYPE passed!"
  else
    echo "drupal-check found issues with these $PROJECT_TYPE:"
    for PROJECT in "${PROJECTS_TO_REPORT[@]}"; do
      echo "- $PROJECT"
    done
  fi

  # Go back to original directory.
  cd - 1>/dev/null
}

# Check contrib modules.
check-projects "modules" $DOCROOT/modules/contrib

# Check contrib themes.
check-projects "themes" $DOCROOT/themes/contrib

