#!/bin/sh
. .venv/bin/activate
exec make test
make bandit