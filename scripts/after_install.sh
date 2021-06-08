#!/usr/bin/env bash

# Install libaries
sudo cp -a $(pwd) /usr/local/bin/myproject
cd /usr/local/bin/myproject
virtualenv myenv
source ./myenv/bin/activate
pip3 install -r requirements.txt
python3 manage.py migrate
python3 manage.py collectstatic --no-input
python3 manage.py runserver 0.0.0.0:80

# Set permission for all files
sudo chown -R www-data:www-data /usr/local/bin
sudo chown :www-data /usr/local/bin/myproject
sudo chown :www-data /usr/local/bin/myproject/db.sqlite3
# Restart services
sudo service apache2 restart
