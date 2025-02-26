# Server Ping Script

This script pings every server in the `172.16.17.x` subnet (where `x` ranges from 0 to 255) and displays whether each server is reachable or not.

---

## Table of Contents
- [Description](#description)
- [Steps](#steps)
  - [Run the Script](#1-run-the-script)
  - [Example Output](#2-example-output)

---

## Description
The script iterates through all IP addresses in the `172.16.17.x` subnet and pings each one. If a server responds to the ping, it displays the message `Server 172.16.17.x is up and running`. If the server does not respond, it displays `Server 172.16.17.x is unreachable`.

---

## Steps

### 1. Run the Script
1. Save the script to a file, e.g., `ping_servers.sh`:
   ```bash
   nano ping_servers.sh
   ```
   adding ping script to it:
2. Make the script Executable:
   ```bash
   chmod +x ping_servers.sh
   ```
3. Run the script:
   ```bash
   ./ping_servers.sh
   ```
### 2. Example Output
Server 172.16.17.0 is unreachable
Server 172.16.17.1 is up and running
Server 172.16.17.2 is unreachable
...


