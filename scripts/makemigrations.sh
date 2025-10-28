#!/bin/sh
echo "Creating new migrations..."
python manage.py makemigrations --noinput
