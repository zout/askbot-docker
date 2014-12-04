#!/bin/bash

if [ ! -d /data/upfiles ]; then
  mkdir /data/upfiles;
fi

if [ ! -d /data/log ]; then
  mkdir /data/log;
fi

# Setup DB
python /app/manage.py syncdb --noinput
python /app/manage.py migrate --noinput

# Run via debugging server
python /app/manage.py runserver 0.0.0.0:80