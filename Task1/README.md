# Nginx Installation with Elevated Privileges

This guide explains how to create a new group, add a user to the group, and configure permissions to allow the user to install Nginx using `sudo` without requiring a password.

---

## Table of Contents
- [Description](#description)
- [Steps](#steps)
  - [Create a New Group](#1-create-a-new-group)
  - [Create a New User](#2-create-a-new-user)
  - [Configure Sudo Permissions](#3-configure-sudo-permissions)

---

## Description
This task involves:
1. Creating a new group named `ivolveteam`.
2. Creating a new user `admin` and assigning them to the `ivolveteam` group.
3. Configuring the user’s permissions to allow installing Nginx using `sudo` without a password.

---

## Steps

### 1. Create a New Group
Create a new group named `ivolveteam`:
```bash
sudo addgroup ivolveteam
```
2. Create a New User:
```bash
sudo adduser -G ivolveteam admin
```
3. Configure Sudo Permissions:
```bash
su - admin 
sudo install apt nginx
```
