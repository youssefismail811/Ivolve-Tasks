# Ansible Automation Platform Setup

This guide explains how to install and configure Ansible Automation Platform on control nodes, create inventories of managed hosts, and perform ad-hoc commands to check functionality.

---

## Table of Contents
- [Description](#description)
- [Steps](#steps)
  - [Install Ansible](#1-install-ansible)
  - [Configure Inventory](#2-configure-inventory)
  - [Perform Ad-Hoc Commands](#3-perform-ad-hoc-commands)

---

## Description
This project automates the setup of Ansible Automation Platform on control nodes, creates inventories of managed hosts, and demonstrates how to use ad-hoc commands to verify functionality.

---

## Steps

### 1. Install Ansible
On the control node, install Ansible using the following commands:

#### For Ubuntu/Debian:
```bash
sudo apt update
sudo apt install ansible
```
### 2. Configure Inventory
Create an inventory file to define your managed hosts:

### 3. Perform Ad-Hoc Commands
Use ad-hoc commands to check functionality:
```bash
ansible -i ./inventory all -m ping 
```
For check:
```bash
ansible webservers -m shell -a "df -h"
```
