#!/usr/bin/env bash

# Install libaries
sudo cp -a $(pwd) /usr/local/bin/myproject
cd /usr/local/bin/myproject
virtualenv myenv
source ./myenv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --no-input

# Set permission for all files
sudo chown -R www-data:www-data /usr/local/bin
sudo chown :www-data /usr/local/bin/myproject
sudo chown :www-data /usr/local/bin/myproject/db.sqlite3
# Restart services
sudo service apache2 restart
