chmod +x bin/magento
git submodule update --init --recursive
git submodule foreach git pull origin master
bin/magento setup:di:compile
bin/magento setup:static-content:deploy en_US en_AU -f
rm -f app/etc/env.php
rm -f index.php
echo "Move sites updated code to staging site"
