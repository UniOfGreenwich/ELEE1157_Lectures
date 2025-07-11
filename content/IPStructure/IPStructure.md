---
marp: true
---

<!--
# Metadata
title: IPStructure
author: Seb Blair (CompEng0001)
description: IPStructure
keywords: IPStructure
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

# IPStructure

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

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1157_Lectures/raw/main/content/IPStructure/IPStructure.pdf)" -->

---

## What is IPv4?

<div style="padding-top:150px">

- **IPv4**: Internet Protocol version 4 is a core protocol that defines IP addresses used in networking.

<br>

- **32-bit** address space, supporting up to **4.3 billion addresses**.

</div>

---

## IPv4 Address Structure

<div style="padding-top:150px">

- IPv4 addresses are written as four **octets** separated by periods: `192.168.1.1`

<br>

<div class="columns-2">
<div>

- Each octet is an **8-bit binary number** (total 32 bits).

</div>
<div>

```plaintext
IPv4 Address Example: 11000000.10101000.00000001.00000001
```

</div>  
</div>

<br>

- Each octet ranges from `0-255` in decimal.

---

## IPv4 Address Classes

IPv4 addresses are divided into five classes:

<div style="padding-top:100px" align=center>

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

<div style="padding-top:100px" align=center>

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

<div class="columns-2" style="padding-top:100px">
<div>

### Example:

- IP: `192.168.1.0/24`
- Subnet Mask: `255.255.255.0`

</div>
<div style="padding-top:100px">

```plaintext
Network Portion | Host Portion
192.168.1       | .0 - .255
```

</div>
</div>

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

<div style="padding-top:50px" align=center>

|Subnet ID|	Range|	Description|
|---|---|---|
|`192.168.1.0/26 `  |	`192.168.1.0`   - `192.168.1.63`	  | First subnet
|`192.168.1.64/26`  |	`192.168.1.64`  - `192.168.1.127`	| Second subnet
|`192.168.1.128/26` |	`192.168.1.128` - `192.168.1.191` |	Third subnet
|`192.168.1.192/26`	| `192.168.1.192` - `192.168.1.255`	| Fourth subnet

</div>

---


## Why IPv6?

<br>

**IPv4 Address Exhaustion**

- IPv4: 32-bit address space (~4.3 billion addresses).

- Increasing number of internet-connected devices.

- IPv6: 128-bit address space

- ~340 undecillion addresses (enough for future needs).

<br>

**Enhanced features:**

- Auto-configuration.

- Improved security (IPSec).

- Simplified header format.

---

## IPv6 Address Format

<div>

![](../../figures/ipv6-address-format.png "centered")

</div>

<br>

<div style="font-size:29px">

- Length: 128 bits (8 groups of 16 bits each).

- Hexadecimal notation.

- Groups separated by colons (e.g., 2001:0db8:85a3:0000:0000:8a2e:0370:7334).

<br>

**Simplification Rules:**

- Remove leading zeros (e.g., 0010 -> 10).

- Replace consecutive zero groups with :: (only once per address).

</div>

---

## Anatomy of IPv6 address format: Example

<div style="padding-top:170px">

![invert w:1000](../../figures/IPv6-Anatomy-Address-Format.png "centered")

</div>

---

## Internet Assigned Numbers Authority (IANA)

<div align=center>

![bg 90% horizontal](../../figures/iana_map.png)

![bg 80% horizontal](../../figures/ipv6-prefix-assignment.png)

</div>

<!--

Internet Assigned Numbers Authority

-->
---

## IPv4 to IPv6 Transition

<div style="font-size:29px;padding-top:100px">

- **Dual Stack**

  - Devices run both IPv4 and IPv6 simultaneously.

  - Allows gradual transition.

<div style="padding-top:100px">

![w:900](../../figures/ipv6_DualStack.png "centered")

</div>

---
## IPv4 to IPv6 Transition

<div style="font-size:29px;padding-top:100px">

- **Tunneling**

  - Encapsulates IPv6 packets within IPv4 headers.

  - **Examples:**

    - 6to4: Automatically assigns an IPv6 prefix to IPv4.

    - Teredo: Tunnels IPv6 over IPv4 using NAT.

<div style="padding-top:100px">

![w:900](../../figures/ipv6_tunnelling.png "centered")

</div>

---

## IPv4 to IPv6 Transition

<div style="font-size:29px;padding-top:50px">

- **Translation**

  - **NAT64:**

    - Maps IPv6 addresses to IPv4 and vice versa.

    - Enables IPv6-only devices to communicate with IPv4 devices.

</div>

<div>

![](../../figures/ipv6_nat64.png "centered")

</div>

---

##  IPv4 to IPv6

### Step 1: Understand the IPv4 Address

- Example IPv4: `192.168.0.1`
<br>
- Convert to binary:
<br>
  - 192 -> `11000000`
<br>
  - 168 -> `10101000`
<br> 
  - 0 -> `00000000`
<br>
  - 1 -> `00000001`
<br>
- Binary IPv4: `11000000.10101000.00000000.00000001`


---

### Step 2: Map IPv4 to IPv6 Format

- IPv6 has special prefixes for IPv4-mapped addresses:
  
  <br>

  - `::ffff:0:0/96`
  
  <br>

- Append the 32-bit binary IPv4 to the `::ffff:` prefix.

---

### Step 3: Convert Binary IPv4 to Hexadecimal

<div style="font-size:29px">

- IPv4 in binary: `11000000.10101000.00000000.00000001`
<br>
- Group into 4-bit chunks:
  - `1100 0000 1010 1000 0000 0000 0000 0001`

<br>

- Convert each chunk to hexadecimal:
  <div class="columns-2">
  <div style="padding-left:300px">

  - `1100` -> `C`
  - `0000` -> `0`
  - `1010` -> `A`
  - `1000` -> `8`
  
  </div>
  <div style="padding-right:300px">

  - `0000` -> `0`
  - `0000` -> `0`
  - `0000` -> `0`
  - `0001` -> `1`
  
  </div>
  </div>
<br>

- Hexadecimal IPv4: `C0:A8:00:01`

</div>

---

### Step 4: Construct the IPv6 Address

<br>

- Prefix: `::ffff:`

<br>

- Hexadecimal IPv4: `C0:A8:00:01`

<br>

- Combined: `::ffff:C0A8:01`

---

## Examples for Practice

### Example 1
Convert the IPv4 address `10.0.0.1` to IPv6.

<details>
<summary>Solution</summary>

1. Binary conversion:
   - 10 -> `00001010`, 0 -> `00000000`,  0 -> `00000000` ,  1 -> `00000001`
   - Binary: `00001010.00000000.00000000.00000001`
2. Hexadecimal conversion:
   - `0000 1010 0000 0000 0000 0000 0000 0001`
   - Hexadecimal: `A:0:0:1`
3. IPv6 address: `::ffff:A:0:0:1`

</details>

---

### Example 2
Convert the IPv4 address `172.16.254.1` to IPv6.

<details>
<summary>Solution</summary>

1. Binary conversion:
   - 172 -> `10101100`, 16 -> `00010000`,    - 254 -> `11111110`, 1 -> `00000001`
   - Binary: `10101100.00010000.11111110.00000001`
2. Hexadecimal conversion:
   - `1010 1100 0001 0000 1111 1110 0000 0001`
   - Hexadecimal: `AC:10:FE:01`
3. IPv6 address: `::ffff:AC10:FE01`

</div>

---

## Cheat Sheet

<div style="padding-top:50px">

![w:1300](../../figures/ipv6_cheat_sheet.png "centered")

</div>
