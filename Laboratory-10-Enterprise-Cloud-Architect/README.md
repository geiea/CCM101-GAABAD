# Laboratory 10 – The Enterprise Cloud Architect

## 1. Project Overview

This project demonstrates the deployment of a self-hosted cloud storage platform using Nextcloud and MariaDB. The system runs on Ubuntu Server inside Oracle VM VirtualBox and uses Docker Compose to manage the application and database containers.

The main goal is to build a working cloud environment with data persistence, basic security, and automated backups.

## 2. Technologies Used

- *Host Operating System:* Windows
- *Virtualization Platform:* Oracle VM VirtualBox
- *Guest Operating System:* Ubuntu Server 26.04.1 LTS
- *Container Platform:* Docker
- *Container Management:* Docker Compose
- *Cloud Application:* Nextcloud
- *Database:* MariaDB
- *Firewall:* UFW
- *Automation:* Bash Script and Cron

## 3. System Architecture

The project uses the following deployment structure:

1. Windows laptop serves as the host machine.
2. Oracle VM VirtualBox runs the Ubuntu Server virtual machine.
3. Ubuntu Server hosts Docker and Docker Compose.
4. Docker runs two containers:
   - nextcloud-app – provides the cloud storage application.
   - nextcloud-db – manages the Nextcloud database using MariaDB.
5. Nextcloud is accessed through port 8080.

The architecture diagram is included as architecture-diagram.png.

## 4. Application Deployment

Nextcloud and MariaDB are deployed using Docker Compose.

The application configuration is provided in:

docker-compose.yml

The containers are configured to restart automatically unless stopped manually.

### Accessing Nextcloud

Open a web browser on the host machine and visit:

http://localhost:8080

If accessing through the virtual machine's IP address, use:

http://VM-IP-ADDRESS:8080

Replace VM-IP-ADDRESS with the actual Ubuntu Server IP address.

## 5. Data Persistence

Docker named volumes are used to preserve application and database data.

- nextcloud_data – stores Nextcloud application data.
- db_data – stores MariaDB database data.

This allows data to remain available even when containers are restarted.

## 6. Security Configuration

The Ubuntu Server uses UFW (Uncomplicated Firewall) to manage incoming network connections.

The configured firewall rules include:

- Default incoming traffic: Denied
- Default outgoing traffic: Allowed
- SSH: Port 22 allowed
- Nextcloud: Port 8080 allowed

MariaDB is not published as a host port in the Docker Compose configuration. It communicates with Nextcloud through the internal Docker network.

## 7. Backup Automation

A Bash script named automation-script.sh is used to automate backups of the MariaDB database and Nextcloud files.

Backups are stored in:

/opt/nextcloud/backups/

Cron is configured to execute the backup script daily at 2:00 AM UTC (10:00 AM Philippine time).

The backup output is recorded in:

/opt/nextcloud/backups/backup.log

## 8. Verification

The following commands were used to verify the deployment and automation:

Check running containers:

sudo docker compose ps

Check firewall status:

sudo ufw status verbose

Check backup files:

ls -lh /opt/nextcloud/backups/

Check Cron service:

sudo systemctl status cron

Check scheduled tasks:

sudo crontab -l

## 9. Project Files

This folder contains the following project documentation and configuration files:

- README.md
- architecture-diagram.png
- docker-compose.yml
- automation-script.sh
- operational-manual.md
- final-reflection.md

## 10. Conclusion

This project demonstrates how to build and manage a self-hosted cloud storage environment using Nextcloud, MariaDB, Docker, and Ubuntu Server. It also demonstrates basic firewall configuration, persistent storage, and automated backup scheduling.