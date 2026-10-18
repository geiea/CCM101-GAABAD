# Laboratory 08 – Cloud Security Engineer

## Mission Overview

This laboratory focuses on securing an Ubuntu server using UFW, deploying an Nginx web application, and managing network ports.

## Objectives

- Understand the Principle of Least Privilege and attack surface.
- Audit and manage network ports.
- Configure UFW with a Default Deny policy.
- Allow SSH and HTTP application traffic on port 8080.
- Document the results using Markdown and screenshots.

## Commands Executed

```bash
cat /etc/os-release
docker --version
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

## Skills Learned

- Deploying an Nginx Docker container.
- Testing web applications using curl.
- Configuring UFW firewall rules in Ubuntu.
- Applying the Default Deny security policy.
- Managing network ports and documenting security settings.
- Maintaining a GitHub Cloud Computing portfolio.