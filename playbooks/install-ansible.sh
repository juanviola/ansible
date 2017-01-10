#!/bin/bash

APT=apt-get
APT_ADD=apt-add-repository

${APT} install software-properties-common
${APT_ADD} ppa:ansible/ansible
${APT} update && ${APT} install ansible