#! /usr/bin/env bash
MODULE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]%/*}" )" &> /dev/null && pwd )

LECTURE_FOLDER=${MODULE_DIR}/content/$1

# default name is $1 if $2 not supplied
LECTURE_FILENAME=${2:-$1}

if [[ ! -d ${LECTURE_FOLDER} ]];then
	mkdir ${LECTURE_FOLDER}
fi

source ${MODULE_DIR}/scripts/config

cat >> ${LECTURE_FOLDER}/${LECTURE_FILENAME}.md << EOF
---
title: ${LECTURE_FILENAME}
description: ${LECTURE_FILENAME} Slides
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
footer: "$modulecode | $modulename"
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1157_Lectures/raw/gh-pages/content/${LECTURE_FOLDER}/${LECTURE_FILENAME}.pdf)" -->

# ${LECTURE_FILENAME}

    Module Code: $modulecode

    Module Name: $modulename

    Lecturer: $moduleleader

---
EOF

# declutter environment variables
unset $modulecode $modulename $moduleleader