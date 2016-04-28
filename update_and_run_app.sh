#! /usr/bin/env sh
git pull https://github.com/chenyehai/GraduateDesigned.git
git checkout develop
python manage.py shell < db_init.py
sh start_app.sh &