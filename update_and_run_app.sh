#! /usr/bin/env sh
git -C /myweb/GraduateDesigned checkout develop
git -C /myweb/GraduateDesigned pull

if [ ! -d "/myweb/GraduateDesigned/database" ]; then
  mkdir /myweb/GraduateDesigned/database
  python /myweb/GraduateDesigned/manage.py shell < "/myweb/GraduateDesigned/db_init.py"
fi
sh /myweb/GraduateDesigned/start_app.sh &