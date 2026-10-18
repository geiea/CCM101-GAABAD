# Backup Script Guide

**Client:** CloudNova Technologies
**Purpose:** Automatically compress and back up the `app-data` directory every night at 2:00 AM, so no one has to remember to do it manually.

---

## 1. The Backup Script (`backup.sh`)

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

## 2. Making the Script Executable (`chmod +x`)

```bash
chmod +x backup.sh
```

By default, a newly created text file in Linux has **no execute permission**, so running `./backup.sh` results in a *"Permission denied"* error. This is a safety feature that prevents ordinary text files from running as programs.

The `chmod +x` command **adds the execute (`x`) permission** to `backup.sh`. This tells Linux the file is allowed to run as a program. After running it, `./backup.sh` executes successfully, and the cron scheduler is also able to run it automatically.

You can confirm the change with `ls -l backup.sh`: the permissions will change from `-rw-r--r--` to `-rwxr-xr-x`.

---

## 3. The Cron Schedule

```cron
0 2 * * * /root/backup.sh
```

This line runs `/root/backup.sh` **every night at exactly 2:00 AM**.

### Breakdown of the five time fields

```
┌───────────── Minute        (0–59)
│ ┌─────────── Hour          (0–23)
│ │ ┌───────── Day of Month  (1–31)
│ │ │ ┌─────── Month         (1–12)
│ │ │ │ ┌───── Day of Week   (0–7, where 0 and 7 = Sunday)
│ │ │ │ │
0 2 * * *  /root/backup.sh
```

| Field | Value | Meaning |
|-------|-------|---------|
| **Minute** | `0` | Run at minute 0 (the top of the hour). |
| **Hour** | `2` | Run at 2 AM (24-hour clock). |
| **Day of Month** | `*` | Every day of the month. |
| **Month** | `*` | Every month of the year. |
| **Day of Week** | `*` | Every day of the week. |
| **Command** | `/root/backup.sh` | The full path of the script to execute. |

Because the last three fields are `*` (wildcards), the job is not restricted to any particular day, so it runs **daily at 2:00 AM**.

### Installing and verifying the cron job

```bash
crontab -l                      # check existing cron jobs
env EDITOR=nano crontab -e      # open the cron table editor
crontab -l                      # confirm the new schedule is installed
