# Disk Space Monitoring Script

This project automates the process of monitoring disk space usage for the root file system (`/`). If the disk usage exceeds a specified threshold (10%), the script sends an email alert. The script is scheduled to run daily at 5:00 PM using `cron`.

---

## Table of Contents
- [Description](#description)
- [Requirements](#requirements)
- [Setup](#setup)
  - [Install Dependencies](#1-install-dependencies)
  - [Configure Email Settings](#2-configure-email-settings)
  - [Create the Script](#3-create-the-script)
  - [Schedule the Script with Cron](#4-schedule-the-script-with-cron)
- [Usage](#usage)
- [License](#license)

---

## Description
This script checks the disk space usage of the root file system (`/`). If the usage exceeds 10%, it sends an email alert to a specified recipient. The script is scheduled to run daily at 5:00 PM using `cron`.

---

## Requirements
- Linux-based system (e.g., Ubuntu).
- `mailutils` or `sendmail` installed for sending emails.
- `cron` installed for scheduling the script.

---

## Setup

### 1. Install Dependencies
Install `mailutils` for sending emails:
```bash
sudo apt update
sudo apt install mailutils