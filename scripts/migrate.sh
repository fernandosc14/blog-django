#!/bin/sh
makemigrations.sh
echo "Applying migrations..."
python manage.py migrate --noinput
