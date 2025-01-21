---
title: RIP 2
description: RIP 2 Slides
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
    section::after {
      content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
    }
    @import url('https://unpkg.com/tailwindcss@^2/dist/utilities.min.css');
footer: "ELEE1157 | Network Routing Management"
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1157_Lectures/raw/gh-pages/content//g/Documents/GitHub/ELEE1157/Lectures/content/RIP2/RIP2.pdf)" -->

# RIP 2

    Module Code: ELEE1157

    Module Name: Network Routing Management

    Lecturer: Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA

---

## Contents 

<div class="grid grid-cols-2 gap-4">

<div style="font-size:24px">

1. Intended Learning Outcomes
2. RIP Routing Broadcast
3. RIP Routing Broadcast 2
4. RIP Routing Broadcast 3
5. RIP Routing Broadcast 4
6. RIP Convergence
7. IOS Hierarchical Structure

</div>
<div style="font-size:24px">

8. IOS Hierarchical Structure Pt 2
9. IOS Hierarchical Structure Pt 3
10. Command Structure
11. Login Banner Message
12. Console Password
13. Router Commands
14. RIP Commands

</div>
</div>

---

## RIP Routing Broadcast

When a router running RIP protocol broadcasts the routing table, it not only broadcasts the information about the locally connected networks but also broadcasts the information about the networks that it has learned from its neighbours through the previously received broadcasts. 

- Router **A** broadcasts information of the network **10.0.0.0/8** to Router **B**.
- Router **B** broadcasts information of the network **10.0.0.0/8** to Router **A** and **C**.
- Router **C** broadcasts information of the network **30.0.0.0/8** to Router **B** and **D**.
- Router **D** broadcasts information of the network **40.0.0.0/8** to Router **C**.

---

## RIP Routing Broadcast 2

<div align=center>

![w:1000](../../figures/RIP_Broadcast_2.PNG)

</div>

---

## RIP Routing Broadcast 3

<div align=center>

![w:1000](../../figures/RIP_Broadcast_3.PNG)

</div>

---

## RIP Routing Broadcast 4

<div align=center>

![w:900](../../figures/RIP_Broadcast_4.PNG)

</div>

---

## RIP Convergence


![center](../../figures/RIP_Convergence.PNG)

The situation in which all routers know all paths of the network is called convergence. 

- After the convergence, the RIP routing protocol actively monitors all paths. 

- If it detects any change in any path, it updates neighbouring routers about that change in the next broadcast.

---

## IOS Mode Hierarchical Structure 

<div style="font-size:20px">

In Cisco Internetwork Operating System (IOS) you can always get more information and help with a command by putting ? after the command. Think of it as man in Linux, just in the end. For instance, the next command prints all commands that are available in the User mode.

`router> ?`

CLI uses a hierarchical structure for the modes

- User Executive mode (user EXEC)

- Privileged executive mode (privileged EXEC)

- Global configuration mode

- Specific configuration mode


</div>

![bg right:50% 100%](../../figures/CISCO-IOS-HS.png)

--- 

## IOS Mode Hierarchical Structure 

![bg right:40% 100% horizontal](../../figures/CISCO-IOS-HS.png)
![w:800](../../figures/CISCO_CLI-IOS.PNG)

---

## IOS Mode Hierarchical Structure 

![bg right:40% 100% horizontal](../../figures/CISCO-IOS-HS.png)
![w:800](../../figures/CISCO-IOS-HS-STATE.png)


---

## Command Structure

<div class="grid grid-cols-2 gap-4" style="padding-bottom:25px">

<div style="font-size:19px">

Command is the initial word entered in the command line:

- Commands are not case-sensitive

</div>
<div div style="font-size:19px">

Following the command is one or more keywords and arguments:

- Keywords describe specific parameters to the command interpreter

- An argument is a value or variable defined by the user

- An argument can be any text string of up to 80 characters

</div>
</div>

![center w:800](../../figures/prompt-breakdown.PNG)

---

## Login Banner Messages


<div class="grid grid-cols-2 gap-4" style="padding-bottom:25px">

<div style="font-size:19px">

- Provide a method for declaring only authorised personnel should attempt to gain entry into the device

- Banners can be an important part of the legal process in the event that someone is prosecuted for breaking into a device

</div>
<div style="font-size:19px">

- Any wording that implies a login is “welcome” or “invited” is not appropriate

- The banner can include scheduled system shutdowns and other useful information that affects all network users

</div>
</div>

![center](../../figures/motd_cisco.png)

---

## Login Banner Messages PT 2

For multi line text enter the command an press enter

![center](../../figures/motd_2_cisco.PNG)

Additional messages can be created for, login and exec -> `#banner login #` or `#banner exec #`

---

## Console passwords

<div style="font-size:22px">

- Limits device access using the console connection
- The console port of a device has special privileges

  - It must be secured with a strong password to prevent unauthorised personnel plugging a cable into the device and gaining access.

- The `Line console 0` command is used to enter the line configuration mode for the console.

</div>

![center](../../figures/console_passwords.PNG)

---

## Router commands

![](../../figures/command_table.PNG)

---

## RIP Commands Summary


RIP Routing protocol configuration commands summary

![](../../figures/rip_command_table.PNG)
