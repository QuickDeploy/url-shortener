#!/bin/bash

if [ -f /config/config.js ]; then
    rm /var/www/html/static/config.js
    ln -s /config/config.js /var/www/html/static/config.js
fi

if [ -f /config/config.inc.php ]; then
    rm /var/www/html/static/config.js
    ln -s /config/config.inc.php /var/www/html/config.inc.php
fi