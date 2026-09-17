# Laboratory 04 - Cloud-Native Engineer

## Mission Overview

This laboratory activity introduces cloud-native technologies, particularly containers and Docker. The activity focuses on understanding the differences between Virtual Machines and containers and deploying an Nginx web server using Docker.

## Objectives

- Differentiate Virtual Machines and containers.
- Access a Docker-enabled environment using KillerCoda.
- Execute basic Docker CLI commands.
- Deploy and manage an Nginx container.
- Document Docker operations using Markdown.

## Docker Commands Executed

```bash
docker --version
docker info
docker pull nginx
docker run -d -p 8080:80 --name nginx-server nginx
curl http://localhost:8080
docker ps
docker stop nginx-server
docker ps -a
docker rm nginx-server

## Skills Learned

- Understanding Virtual Machines and containers.
- Using Docker CLI commands.
- Pulling Docker images.
- Running containers.
- Mapping ports.
- Managing the container lifecycle.
- Writing technical documentation in Markdown.

## Challenges Encountered

One challenge was becoming familiar with Docker commands and understanding how port mapping works. I also needed to check the container status carefully when stopping and removing the Nginx container. By following the commands step by step, I was able to successfully deploy and manage the container.