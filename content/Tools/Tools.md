---
marp: true
---

<!--
# Metadata
title: Command Line Tools for Networking
author: Seb Blair (CompEng0001)
description: Command Line Tools for Networking
keywords: Command line cli tools networking
lang: en

# Slide styling
theme: uog-theme
_class: lead title
paginate: true
_paginate: false
transition: fade 250ms

style: |
  header em { font-style: normal; view-transition-name: header; }
  header strong { font-weight: inherit; view-transition-name: header2; }
  header:not:has(em) { view-transition-name: header; }
-->

<style scoped>
h1 {
  view-transition-name: header;
  display: flex;
  align-items: center;
  margin: 0 auto;
}
</style>

# Command Line Tools for Networking

<div align=center style="font-size:76px; padding-left:300px;padding-right:300px;" >

```
HTTP/1.1 200 OK
Content-Type: application/json
Date: Thu, 10 Jul 2025 08:26:00 GMT
Server: EduAPI/3.0

{
  "code": "ELEE1157",
  "name": "Network Routing Management",
  "credits": 15,
  "module_leader": "Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA"
}

```

</div>

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1157_Lectures/raw/main/content/ModuleIntroduction/moduleIntroduction.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Command Line Tools for Networking_" -->

## Network Configuration and Interface Management

<div style="padding-top:100px">

- `ip`: Configure IP addresses, routes, and manage network interfaces.
<br>
- `ifconfig`: View and configure network interfaces (deprecated on some systems, replaced by ip).
<br>
- `netsh`: Configure and manage network settings on Windows.
<br>
- `nmcli`: Control NetworkManager and configure network connections on Linux.
<br>
- `iwd/wpa/iw/connman`: Network management tools
<br>
- `route`: Manage IP routing tables.

</div>

---

## Connection Testing and Diagnostics

<div style="padding-top:100px">

- `ping`: Test reachability of hosts and measure round-trip time.
<br>
- `traceroute` / `tracert` (Windows): Trace the path packets take to a destination.
<br>
- `mtr`: Combines ping and traceroute for continuous network diagnostics.
<br>
- `telnet`: Test connectivity and basic communication with TCP ports.
<br>
- `nc` (Netcat): Send and receive data over TCP/UDP; useful for testing ports.
<br>
- `curl` / `wget`: Retrieve data from URLs, test HTTP/HTTPS connections.

</div>

---

## Network Analysis and Troubleshooting

<div style="padding-top:100px">

- `arp`: Display or manipulate the ARP cache (used to map IPs to MAC addresses).
<br>
- `tcpdump`: Capture and analyze packets on a network interface.
<br>
- `Wireshark` (CLI: `tshark`): Network protocol analyzer for in-depth packet analysis.
<br>
- `ss`: Display socket statistics and details for active connections.
<br>
- `nmap`: Network discovery and security auditing, includes port scanning.
<br>
- `nslookup` / dig: Query DNS servers for information about hostnames and IPs.
<br>
- `host`: Simple tool for DNS lookups.

</div>

---

## Performance Monitoring and Statistics

<div style="padding-top:100px">

- `netstat`: View network connections, routing tables, interface stats, and more.
<br>
- `iftop`: Monitor bandwidth usage on a specific interface.
<br>
- `nload`: Visualize network traffic in real-time.
<br>
- `bmon`: Bandwidth monitor and rate estimator.
<br>
- `iperf3`: Measure network bandwidth between two hosts.
<br>
- `vnstat`: Network traffic monitor and logger.

</div>

---

## Network File Transfer and Communication

<div style="padding-top:100px">

- `scp`: Securely copy files between hosts over SSH.
<br>
- `sftp`: Secure File Transfer Protocol, similar to ftp but encrypted with SSH.
<br>
- `rsync`: Sync files and directories locally or across networks efficiently.
<br>
- `ftp`: Transfer files using the File Transfer Protocol (less secure than SFTP).
<br>
- `tftp`: Transfer files over Trivial File Transfer Protocol (often used in PXE environments).

</div>

---

## Firewall and Security Management

<div style="padding-top:100px">

- `ufw`: Simple command-line interface for managing firewall on Linux.
<br>
- `iptables` / nftables: Configure firewall rules and manage packet filtering.
<br>
- `firewalld`: A service to manage firewall on Linux, often used with firewall-cmd.

---

## VPN and Tunnel Management

<div style="padding-top:100px">

- `openvpn`: Connect to OpenVPN-compatible VPNs.
<br>
- `ssh`: Secure Shell for encrypted connections and tunneling.
<br>
- `sshd`: SSH daemon, runs on servers to allow SSH access.
<br>
- `stunnel`: Provides TLS encryption for arbitrary TCP connections.
<br>
- `ipsec` / `strongSwan`: Manage IPsec VPN connections.

</div>

---


## nmcli

<div class="columns-2" style="padding-top:100px">
<div  style="padding-top:100px">

`nmcli` is the command-line tool for managing network connections with NetworkManager. It can handle both wired and wireless connections.

</div>
<div>

```bash
# List all connections
nmcli connection show

# Connect to a Wi-Fi network
nmcli device wifi connect "SSID" password "password"

# Disconnect a connection
nmcli connection down id "ConnectionName"

# Display device status
nmcli device status
```

</div>
</div>

---

## iwd (Internet Wireless Daemon)

<div class="columns-2" style="padding-top:100px">
<div  style="padding-top:100px">


`iwd` is a lightweight Wi-Fi management daemon developed by Intel, offering WPA2 and WPA3 support.

</div>
<div>

```bash
# Start interactive mode to manage Wi-Fi connections
iwctl

# Inside iwctl:
# List available Wi-Fi networks
> station wlan0 get-networks

# Connect to a Wi-Fi network
> station wlan0 connect "SSID"

# Disconnect from a network
> station wlan0 disconnect
```

</div>
</div>

---

## wpa_supplicant

<div class="columns-2" style="padding-top:100px">
<div  style="padding-top:100px">

`wpa_supplicant` is a Wi-Fi management daemon often used to connect to WPA and WPA2 protected networks.

</div>
<div>

```bash
# Start wpa_supplicant with a configuration file
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf

# Connect interactively using wpa_cli
wpa_cli -i wlan0

# Within wpa_cli:
# Connect to a network by SSID and passphrase
> add_network
> set_network 0 ssid ""SSID""
> set_network 0 psk ""password""
> enable_network 0
```

</div>
</div>

---

## nmap

Nmap (“Network Mapper”) is an open source tool for network exploration and security auditing.

<div class="columns-2" style="padding-top:100px">
<div  style="padding-top:50px;padding-left:100px">


- Ping Scan
<br>
<br>

- OS detection
<br>
<br>

- experiment with others...

</div>
<div>

<br>

```
nmap -sp 192.168.1.1/24
```
<br>
<br>

```
nmap -O 192.51.155.0/24
```
<br>

```
nmap --help

man nmap
```

</div>
</div>

---

## wifi modes

<div style="font-size:26px">

- `mode`
  - `infrastructure`: This is the most common mode, used for connecting to standard Wi-Fi networks with an access point.
<br>
  - `ap`: Used to set up the device as an access point.
<br>
  - `adhoc`: Used for ad-hoc networks where devices connect directly to each other without an access point. (No router needed!)
  <br>
  - `monitor`: This mode is used for passive monitoring of Wi-Fi traffic. It allows the device to capture packets without actively participating in the network.
<br>
  - `mesh`: Used for mesh networking, where devices communicate with each other to form a network without a central access point.
<br>
  - `p2p`: Peer-to-peer mode, used for direct communication between devices, similar to ad-hoc but with different underlying mechanisms.