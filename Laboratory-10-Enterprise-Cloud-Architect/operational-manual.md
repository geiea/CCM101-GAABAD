# Operational Manual – Nextcloud Cloud Server

## 1. System Overview

The Nextcloud cloud storage platform runs on Ubuntu Server inside Oracle VM VirtualBox. Docker Compose manages two containers: Nextcloud and MariaDB.

The Nextcloud web interface can be accessed from the Windows host using:

http://localhost:8080

## 2. Starting the System

1. Start the Ubuntu Server virtual machine in VirtualBox.
2. Log in to Ubuntu.
3. Open the terminal.
4. Navigate to the project directory:

   cd /opt/nextcloud

5. Start the containers:

   sudo docker compose up -d

6. Check that the containers are running:

   sudo docker compose ps

7. Open Nextcloud in the Windows browser at http://localhost:8080.

## 3. Stopping the System

To stop the Nextcloud services safely:

1. Open the Ubuntu terminal.
2. Navigate to /opt/nextcloud.
3. Run:

   sudo docker compose down

This stops and removes the containers. The persistent Docker volumes are retained.

## 4. Checking Container Status

Run:

sudo docker compose ps

Both nextcloud-app and nextcloud-db should show as running when the system is operating normally.

## 5. Backup Procedure

The backup script is stored at:

/opt/nextcloud/backup.sh

To run a manual backup:

sudo /opt/nextcloud/backup.sh

Backup files are stored in:

/opt/nextcloud/backups/

The script creates a MariaDB database backup and a compressed archive of the Nextcloud files.

To view the backup files:

ls -lh /opt/nextcloud/backups

## 6. Automated Backup Schedule

Cron is configured to run the backup script daily at 2:00 AM UTC.

This is equivalent to 10:00 AM Philippine time.

To check the scheduled task:

sudo crontab -l

To check the Cron service:

sudo systemctl status cron

Backup output is logged in:

/opt/nextcloud/backups/backup.log

## 7. Firewall Status

The Ubuntu firewall is managed using UFW.

To check firewall rules:

sudo ufw status verbose

The configured rules allow SSH on port 22 and Nextcloud on port 8080. MariaDB is not exposed through a published host port.

## 8. Troubleshooting

*Nextcloud does not open in the browser*

- Check that the Ubuntu virtual machine is running.
- Check the container status using sudo docker compose ps.
- Confirm the VirtualBox port forwarding rule for port 8080.

*A container is not running*

- Navigate to /opt/nextcloud.
- Run sudo docker compose up -d.
- Check the logs using sudo docker compose logs.

*A backup does not appear*

- Run sudo /opt/nextcloud/backup.sh manually.
- Check the backup directory using ls -lh /opt/nextcloud/backups.
- Review the log file using cat /opt/nextcloud/backups/backup.log.

## 9. Important Notes

- Do not delete the Docker volumes unless you intend to remove persistent application or database data.
- Keep backup files in a safe location.
- Do not publish real database passwords or other secrets in the public GitHub repository.