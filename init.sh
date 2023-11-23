#!/bin/sh

sudo docker-compose up -d

npm i

node producer.js
