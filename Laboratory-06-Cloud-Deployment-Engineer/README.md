# Laboratory 06 – Cloud Deployment Engineer

## Mission Overview

This mission focused on deploying a two-tier cloud application using Docker
Compose. The application used Nextcloud as the web application and MariaDB
as the database.

## Objectives

- Understand multi-tier application architecture.
- Create and understand a `docker-compose.yml` file.
- Deploy Nextcloud and MariaDB using Docker Compose.
- Practice Infrastructure as Code (IaC).
- Document cloud deployment procedures using Markdown.

## Commands Executed

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down

## Skills Learned

- Docker Compose
- Multi-container deployment
- YAML configuration
- Infrastructure as Code (IaC)
- Container networking
- Linux command-line usage
- Nextcloud and MariaDB deployment