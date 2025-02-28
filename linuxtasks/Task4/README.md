# SSH Key Setup and Configuration

This guide explains how to generate SSH keys, enable SSH access to a remote VM using the key, and configure SSH to allow connecting with a simple command like `ssh ivolve`.

---

## Table of Contents
- [Description](#description)
- [Steps](#steps)
  - [Generate SSH Keys](#1-generate-ssh-keys)
  - [Copy Public Key to Remote VM](#2-copy-public-key-to-remote-vm)
  - [Test SSH Connection](#3-test-ssh-connection)
  - [Configure SSH Shortcut](#4-configure-ssh-shortcut)

---

## Description
This project automates the process of setting up SSH keys and configuring SSH to allow passwordless login to a remote VM. It also simplifies the connection process by allowing you to use a shortcut command like `ssh ivolve`.

---

## Steps

### 1. Generate SSH Keys
 On your local machine, generate a public/private key pair:
 ```bash
 ssh-keygen student@192.168.26.128
```
### 2. Copy Public Key to Remote VM
 copy id user@ip:
 ```bash
 ssh-copy-id student@192.168.26.128
```
### 3. Test SSH Connection
 Configure SSH for Shortcut (ssh ivolve):
 ```bash
 nano ~/.ssh/config
```
 Add the following configuration:
 ```bash
 Host ivolve
    HostName 192.168.26.128
    User student
    IdentityFile ~/.ssh/id_ed25519
```
### 4. Configure SSH Shortcut
 you can connect to the remote VM using just:
 ```bash
 ssh ivolve
 ```