# Monitoring Script MySQL Installation and Backup Automation

This project automates the process of monitoring disk space usage for the root file system (`/`). The script is scheduled to run weekly at 5:00 PM using `cron`.

---

## Table of Contents
- [Description](#description)
- [Setup](#setup)
  - [Install Dependencies](#1-install-dependencies)
  - [Create Backup Script](#2-create-a-backup-script)
  - [Set Up  Cron Job](#3-set-up-a-cron-job)


---

## Description
This script checks the disk space usage of the root file system (`/`). If the usage exceeds 10%, it sends an email alert to a specified recipient. The script is scheduled to run daily at 5:00 PM using `cron`.

---
 
## Setup

### 1. Install Dependencies
Install `mysql` for sending emails:

```bash
 sudo apt install mysql-server
 sudo apt update
```
 ---

### 2.  Create Backup Script
using nano for bath to put script:

```bash
sudo nano /usr/local/bin/mysql_backup.sh
```
Adding to file:
```bash
#!/bin/bash

date=$(date +"%Y-%m-%d_%H-%M-%S")
mkdir -p /backup
mysqldump -u root -predhat --all-databases > /backup/mysql_backup_$date.sql
```
Make it executable:
```bash
sudo chmod +x /usr/local/bin/mysql_backup.sh
```

### 3.  Set Up Cron Job
```bash
sudo crontab -e
```
edit file by adding:
```bash
0 5 * * 0 /usr/local/bin/mysql_backup.sh
```
finally check:
```bash
sudo /usr/local/bin/mysql_backup.sh
```
