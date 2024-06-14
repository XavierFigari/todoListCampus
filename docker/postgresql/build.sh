#!/usr/bin/env bash

docker build -t todo-postgresql .
docker run --rm -it --name todo todo-postgresql sh
