# Laboratory 07 – Cloud Operations Engineer

## Mission Overview

This laboratory focuses on monitoring Linux server resources, deploying an Nginx web server using Docker, generating HTTP requests, and checking application logs and container metrics.

## Objectives

- Monitor RAM, disk storage, and CPU usage.
- Deploy an Nginx Docker container.
- Generate successful HTTP requests and a 404 error.
- Analyze application logs and container resource metrics.
- Document the results in a GitHub portfolio.

## Monitoring Commands Executed

- `free -h` – Check memory usage.
- `df -h` – Check disk storage.
- `top` – Monitor CPU and running processes.
- `docker run -d --name client-website -p 8080:80 nginx` – Deploy Nginx.
- `docker ps` – Check running containers.
- `curl http://localhost:8080/` – Send an HTTP request.
- `curl http://localhost:8080/hidden-admin-page` – Generate a 404 error.
- `docker logs client-website` – View application logs.
- `docker stats` – Monitor container metrics.

## Skills Learned

- Linux system monitoring
- Docker container deployment
- HTTP request testing
- Application log analysis
- Real-time resource monitoring
- Markdown documentation and GitHub portfolio management