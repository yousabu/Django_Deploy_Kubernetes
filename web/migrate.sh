#!/bin/bash

DJANGO_SUERPUSER_EMAIL=${DJANGO_SUERPUSER_EMAIL:-"shbanmhmdywsf8@gmail.com"}


cd /app/

/opr/venv/python manage.py migrate --noinput 

/opt/venv/python manage.py createsuperuser --email $DJANGO_SUERPUSER_EMAIL --noinput || true