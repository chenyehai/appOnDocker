#! /usr/bin/env sh
git -C /myweb/GraduateDesigned checkout develop
git -C /myweb/GraduateDesigned pull
mkdir /myweb/GraduateDesigned/database
python /myweb/GraduateDesigned/manage.py shell < "/myweb/GraduateDesigned/db_init.py"
sh /myweb/GraduateDesigned/start_app.sh &