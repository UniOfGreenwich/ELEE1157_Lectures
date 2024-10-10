---
title: IPStructure
description: IPStructure slides
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
      font-size: 28px;
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
    }    content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
    }
footer: ELEE1157 | Network Rotuing Management
auto-scaling: false
paginate: true
_paginate: false
marp: true
math: true
---

<!-- _footer: ""-->

# IPStructure

    Module Code: ELEE1157

    Module Name: Network Routing Management

    Credits: 15

    Module Leader: Seb Blair BEng(H) MPhil PGCAP MIET MIHEEM FHEA

---

## What is IPv4?

- **IPv4**: Internet Protocol version 4 is a core protocol that defines IP addresses used in networking.
- **32-bit** address space, supporting up to **4.3 billion addresses**.

---

## IPv4 Address Structure

- IPv4 addresses are written as four **octets** separated by periods.
- Example: `192.168.1.1`
- Each octet is an **8-bit binary number** (total 32 bits).

  ```plaintext
  IPv4 Address Example: 11000000.10101000.00000001.00000001
  ```
- Each octet ranges from `0-255` in decimal.

---

## IPv4 Address Classes

IPv4 addresses are divided into five classes:

<div align=center>

| Class | Range                       | Usage           |Networks|Hosts|
|-------|-----------------------------|-----------------|--------|-----|
| A     | 1.0.0.0 - 126.0.0.0         | Large networks  |16777216|16777214|
| B     | 128.0.0.0 - 191.255.0.0     | Medium networks |65534|65534|
| C     | 192.0.0.0 - 223.255.255.0   | Small networks  |2097152|254|
| D     | 224.0.0.0 - 239.255.255.255 | Multicasting    |||
| E     | 240.0.0.0 - 255.255.255.255 | Experimental    |||

</div>

---

## Reserved IP Ranges

IPv4 has reserved addresses for private networks and special purposes.

<div align=center>

| Range               | Description            |
|---------------------|------------------------|
| 10.0.0.0 - 10.255.255.255 | Class A private |
| 172.16.0.0 - 172.31.255.255 | Class B private |
| 192.168.0.0 - 192.168.255.255 | Class C private |
| 127.0.0.0 - 127.255.255.255 | Loopback (localhost) |

</div>

---

## Subnetting in IPv4

### What is Subnetting?
- Dividing a large network into smaller, manageable subnetworks.
- Uses a **subnet mask** to identify network and host portions.

### Example:
- IP: `192.168.1.0/24`
- Subnet Mask: `255.255.255.0`

  ```plaintext
  Network Portion | Host Portion
  192.168.1       | .0 - .255
  ```

---

## CIDR Notation

### CIDR (Classless Inter-Domain Routing)
- Uses `slash` notation to indicate the subnet mask length (e.g., `/24`).
- `192.168.1.0/24` means the first 24 bits are network bits.

### Examples of CIDR:
- `/8` (Class A) -> 255.0.0.0
- `/16` (Class B) -> 255.255.0.0
- `/24` (Class C) -> 255.255.255.0

---

## Example: Calculating Subnets P1

<div style="font-size:"24px">

**Given Network:** whose IP is range is `192.168.1.0/24` create four subnets.

|1. To create four subnets, we need to borrow bits from the host portion
   - **Subnet Mask**:
      -  `/26` -> 255.255.255.192 or `11111111.11111111.11111111.11000000`

2. Calculate Number of Subnets and Hosts per Subnet:
    - With `/26`, the first 26 bits are the network portion, and the remaining 6 bits are for hosts.
    - Number of subnets created: $2^2 = 4$ (since we borrowed two bits)
    - Hosts per subnet: $2^6 = 64 $ addresses per subnet (62 usable)

</div>

---
## Example: Calculating Subnets P2

3. **Determine the Subnet Ranges:**:

 - Starting with 192.168.1.0, each subnet has 64 addresses, incrementing by 64 for each subsequent subnet.

<div align=center>

|Subnet ID|	Range|	Description|
|---|---|---|
|`192.168.1.0/26 `  |	`192.168.1.0`   - `192.168.1.63`	  | First subnet
|`192.168.1.64/26`  |	`192.168.1.64`  - `192.168.1.127`	| Second subnet
|`192.168.1.128/26` |	`192.168.1.128` - `192.168.1.191` |	Third subnet
|`192.168.1.192/26`	| `192.168.1.192` - `192.168.1.255`	| Fourth subnet

</div>

---

## Summary

- IPv4 is a 32-bit address space with classes for different network sizes.
- Subnetting divides a network into smaller parts using subnet masks.
- CIDR provides flexible subnetting options.
