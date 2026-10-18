# Laboratory 09 – Cloud Automation Engineer

## Mission Overview

This laboratory focuses on automating repetitive cloud administration tasks using Bash scripting and Linux Cron. The main activity is creating a script that compresses application data into a timestamped backup archive and scheduling it to run automatically.

## Objectives

- Understand Bash scripts and variables.
- Create and execute a backup script.
- Configure executable file permissions using `chmod`.
- Schedule automated tasks using Cron.
- Document the script and its configuration in Markdown.

## Commands Executed

```bash
mkdir app-data
echo "This is critical client data." > app-data/data.txt
nano backup.sh
chmod +x backup.sh
./backup.sh
ls -l backups/
tar -tzf backups/backup_*.tar.gz
crontab -l
env EDITOR=nano crontab -e
```
## Skills Learned

- Bash scripting and variable usage
- Managing Linux file permissions
- Creating and managing directories and files
- Compressing files using `tar`
- Scheduling automated tasks using Cron
- Writing technical documentation in Markdown
- Managing and updating a GitHub portfolio