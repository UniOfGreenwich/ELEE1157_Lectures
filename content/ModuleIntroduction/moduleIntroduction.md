---
marp: true
---

<!--
# Metadata
title: Module Introduction
author: Seb Blair (CompEng0001)
description: Summary of module handbook
keywords: module handbook
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

# Module Introduction

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

## Module Aims

<div style="padding-top:150px;">

To develop [your] knowledge of the protocols used in both large organizations and in internetworking; to enable [you] to appreciate the issues that need to be addressed in the development and management of a large computer network system; to equip [you] with practical router-configuration skills and use appropriate tools to analyse networking protocols and knowledge to design and implement the repair; to allow for critical reflection upon the technologies used in LANs and their social consequences.

</div>

---

<style scoped>ul { list-style: list; padding: 100; }</style>

## Module Learning Outcomes 

On successful completion of this module a student will be able to:

<div style="padding-top:50px;padding-left:100px;padding-right:200px;font-size:28px">

[1] Create policies for and configure appropriate routing protocols in a large network. 
<br>
[2] Analyse and solve problems involving the applications and configuration of hardware and software components of a communications network. 
<br>
[3] Compare and contrast in practical design and implementation of LANs within given parameters and have the ability to choose the appropriate technology for a given situation. 
<br>
[4] Apply diagnostic tools and configure a network to specific design specifications to support a wide range of networked environments.
<br>

</div>

--- 

## Assessments

<div style="padding-top:50px; padding-left:100px;padding-right:200px;">

- Coursework (100%).
  - LO: 1-4.
  - Grading Mode: Numeric.
  - Pass Mark: 40%.
  - Word Length: 1750.
  - Outline Details: Challenge based networking scenarios.
  - Coursework: 100% weighting, 40% pass mark.

<br>

- Overview: 

>Your class forms a distributed IT response team for a temporary network deployment using Raspberry Pi routers. Each team manages one Pi acting as a routed node connected to others over Ethernet. The node also provides 5GHz Wi-Fi access to local devices.