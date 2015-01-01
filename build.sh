#!/bin/bash

# Name:        build.sh
# Description: Provides a Drush make build script.

BUILD=/opt/drupal 		# Directory that the build pack uploaded configuration to.
WEBROOT=/var/www		# Root of the uploaded project code.
DOCROOT=$WEBROOT/app	# Application directory of the project.
MAKEFILE=drupal.make 	# Name of the drush make file that we will build the application with.

# Build the code base.
drush make $WEBROOT/$MAKEFILE $DOCROOT
ln -s $WEBROOT/modules $DOCROOT/sites/all/modules
ln -s $WEBROOT/themes $DOCROOT/sites/all/themes

# Setup configuration files.
scp $BUILD/conf/drupal/settings.php $DOCROOT/sites/default/settings.php
if [ -f "${WEBROOT}/settings.php" ]; then
	mv $WEBROOT/settings.php $DOCROOT/sites/default/settings.overrides.php
fi

# Create a directory structure.
mkdir -p $DOCROOT/sites/default/files/tmp
mkdir -p $DOCROOT/sites/default/private
chown -R www-data:www-data $DOCROOT/sites/default/files
chown -R www-data:www-data $DOCROOT/sites/default/private
