# Paperless Backup
Paperless-NGX backup script

Here’s your instructions in **Markdown format**:

## **How to Use the Script**
1. **Modify the `BACKUP_DIR`** variable to match your actual backup directory.
2. **Save the script** as `paperless_backup.sh`.
3. **Give execution permission:**
   ```bash
   chmod +x backup_paperless.sh
   ```
4. **Run manually for testing:**
   ```bash
   ./backup_paperless.sh
   ```

## **Set Up as a Daily Cron Job**
1. Open the crontab editor:
   ```bash
   crontab -e
   ```
2. Add this line at the end to run the script daily at **2 AM**:
   ```bash
   0 2 * * * /path/to/backup_paperless.sh >> /var/log/backup_paperless.log 2>&1
   ```

## **Summary**
- Creates a new backup daily.
- Retains only the last **7** backups.
- Deletes older backups automatically.

