#!/usr/bin/env bash

python /AutotestPlatform/AutotestWebD/manage.py migrate

#python3 ./AutotestWebD/manage.py loaddata fixtures/initial_data.json

#nohup python3 ./AutotestWebD/manage.py runserver 0.0.0.0:6666 &