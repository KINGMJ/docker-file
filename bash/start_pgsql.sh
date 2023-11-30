#!/bin/sh
docker run --rm --name pgsql -e POSTGRES_PASSWORD=123456 -p 5432:5432 postgres:16.0
