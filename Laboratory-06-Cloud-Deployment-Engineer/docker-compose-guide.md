# Docker Compose Guide — Nextcloud + MariaDB Deployment

This document explains the `docker-compose.yml` file used to deploy the
Nextcloud and MariaDB application.

## What does the `services:` block do?

The `services:` block defines the containers managed by Docker Compose.
This file has two services: `database` for MariaDB and `app` for Nextcloud.

## How did the Nextcloud app container find the database container?

The app uses `MYSQL_HOST=database`. The name `database` matches the MariaDB
service name, allowing the Nextcloud container to connect to the database.

## What is the difference between `docker run` and `docker-compose up -d`?

`docker run` is used to create and start a single container with its
configuration provided through command-line options.

`docker-compose up -d` reads the `docker-compose.yml` file and starts all
defined services together. The `-d` option runs the containers in the
background.