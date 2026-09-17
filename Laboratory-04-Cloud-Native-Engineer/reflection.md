# Checkpoint 7 – Mission Reflection

## 1. Boot Time and Setup Process

A Docker container can start in seconds because it does not need to install and boot a complete operating system. In comparison, a Virtual Machine needs its own guest operating system, which takes more time and resources to set up. Using Docker made the process of deploying a web server much faster and simpler.

## 2. Port Mapping

The port mapping `-p 8080:80` is necessary because the Nginx web server runs on port 80 inside the container. Port 8080 on the host is connected to port 80 in the container. This allows me to access the web server through `http://localhost:8080`.

## 3. Data When Using `docker rm`

The `docker rm` command removes the container completely. Data stored inside the container's writable layer can also be lost when the container is removed. This shows why important data should be stored using volumes or other external storage methods.

## 4. Containerization and DevOps

Containerization can improve the way software developers and IT operations teams work together. Developers can create applications in consistent environments, while IT operations teams can deploy and manage the same containers more easily. This supports DevOps by making development, testing, and deployment more consistent.

## 5. GitHub Portfolio

My GitHub portfolio is evolving as I complete each laboratory activity. I am adding Markdown documentation, Docker commands, reflections, and screenshots as evidence of my work. Compared to my earlier cloud activities, my portfolio now shows more practical experience with cloud-native technologies and Docker. This mission helped me apply the concepts I learned through hands-on activities.
