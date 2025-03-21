# paperless Backup
Paperless-NGX backup script

How to Use the Script

    Modify the BACKUP_DIR variable to match your actual backup directory.
    Save the script as backup_paperless.sh.
    Give execution permission:

chmod +x backup_paperless.sh

Run manually for testing:

    ./backup_paperless.sh

Set Up as a Daily Cron Job

    Open the crontab editor:

crontab -e

Add this line at the end to run the script daily at 2 AM:

    0 2 * * * /path/to/backup_paperless.sh >> /var/log/backup_paperless.log 2>&1

This will:

    Create a new backup daily.
    Retain only the last 7 backups.
    Delete older backups automatically.
