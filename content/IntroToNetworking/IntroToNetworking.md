---
title: IntroToNetworking
description: IntroToNetworking slides
class: gaia
_class:
  - lead
  - invert
style: |
    #img-right{
      float: right;
    }
    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }
    table {
      border-collapse: collapse;
      font-size: 22px;
    }
    table, th,tr, td {
      border: none!important;
      vertical-align: middle;
    }
    grid {
      display: grid;
    }
    grid-cols {
      grid-template-columns: repeat(var(--columns, 2), minmax(0, 1fr));
    }
    grid-rows {
      grid-template-rows: repeat(var(--rows, 2), minmax(0, 1fr));
    }
    gap {
      gap: var(--gap, 4px);
    }    section::after {
    content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
    }
footer: ELEE1157 | Network Rotuing Management
auto-scaling: false
paginate: true
_paginate: false
marp: true
math: true
---

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1157_Lectures/raw/gh-pages/content/IntroToNetworking/IntroToNetworking.pdf)" -->

# Introduction To Networking

    Module Code: ELEE1157

    Module Name: Network Routing Management

    Credits: 15

    Module Leader: Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA

---

<div align=cen> 

## What is  A COMPUTER NETWORK?​

</div>

Computer networking refers to connected computing devices (such as laptops, desktops, servers, smartphones, and tablets) and an ever-expanding array of IoT devices (such as cameras, door locks, doorbells, refrigerators, audio/visual systems, thermostats, and various sensors) that communicate with one another.​

![bg right:35% 100%](../../figures/All_the_devices.png)

---


## Examples of CNs 

<div style="font-size:26px">

- Networks are collections of computers, software, and hardware that are all connected to help their users work together. ​

- A network connects computers by means of  Wired systems or Wireless connectivity, specialised software, and devices that manage data traffic. ​

- A network enables users to share files and resources, such as printers, as well as send messages electronically (e-mail) to each other.​

</div>

![bg right:40% 100%](../../figures/computer-network-1.png)

---

## Specialised devices 1​

<div style="font-size:22px">

Specialised devices such as **switches**, **routers**, and **access points** form the foundation of computer networks​

- ​Switches​

  - Switches connect and help to **internally secure** computers, printers, servers, and other devices to networks in homes or organisations​

- Access Points​

  - Access points are switches that connect devices to networks without the use of cables​


- Switches/Access Points identify a connected computer by its Media Access Control (MAC) address.  ​

  - MAC 12-digit hexadecimal numbers (48 bits in length) – MM:MM:MM:SS:SS:SS​

    - 00:0a:95:9d:68:16  this is the Network Interface Card (NIC)​

</div>

![w:500 center](../../figures/network_switch.png)

---

## Specialised devices 2​ - Routers

<div style="font-size:24px">
 
- Connect networks to other networks and act as dispatchers. ​

  - They **analyse data** to be sent across a network, choose the **best routes** for it, and send it on its way. ​

  - **Connect** your **home** and **business** to the **world** and help **protect** information from outside **security threats​**


- Identify a connected computer by is network assigned​Internet Protocol (IP) address. ​

  - IPv4 addresses are usually represented in dot-decimal notation, ​consisting of four decimal numbers, each ranging from 0 to 255 ​
​
    - xxx.xxx.xxx.xxx -> 192.168.1.0​

</div>

![bg right:30% 100%](../../figures/router.png)

---

## Types of computer networks 1

While similar in their overall objectives, various types of networks fulfil different purposes.​

Here are two:​

 - LAN​
 - WAN​

![bg right:50% 90%](../../figures/00s_LAN_Party.png)

---

## Types of computer networks 2​

**LAN**

- is a collection of connected devices in one physical location, such as a home or an office. ​

- can be small or large, ranging from a home network with one user to a large enterprise network with thousands of users and devices, with a limited area.  

- may include both wired and wireless devices.​

![bg right:40% 100%](../../figures/lan_building.png)


---

## Types of computer networks 3​

<div style="font-size:24px">

**WAN**
- extends over a large geographical area and connects individual users or multiple LANs, the Internet $\therefore$ can be considered a WAN. ​

- large organisations use WANs to connect their various sites, remote employees, suppliers, and data centres so they can run applications and access necessary data.​

- physical connectivity in WANs can be achieved by leased lines, cellular connections, satellite links, and other means.​

</div>

![bg right:40% 100%](../../figures/WAN.png)