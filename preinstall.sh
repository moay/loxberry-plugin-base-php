#!/bin/bash

PDIR=$3
PDATA=$LBPDATA/$PDIR
TARGETDIR=$PDATA/vendor

echo "<INFO> Preparing vendor libraries"
php composer.phar install --no-interaction --no-dev
sed -i 's/\'\/data\/src\'/\'\/src\'/g' ./data/vendor/composer/autoload_psr4.php

#echo "<INFO> Copying vendor libraries to $TARGETDIR"
#rm -rf $TARGETDIR
#mv ./data/vendor/* $TARGETDIR
#rm -rf ./data/vendor

echo "<OK> Done installing vendor libraries"

# Exit with Status 0
exit 0