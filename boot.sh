#!/bin/sh

source .venv/bin/activate
flask db upgrade
exec gunicorn -b :5000 --access-logfile - --error-logfile - -c gunicorn_config.py microblog:app