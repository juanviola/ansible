#!/bin/bash

APT=apt-get
APT_ADD=apt-add-repository

${APT} install -y software-properties-common
${APT_ADD} ppa:ansible/ansible
${APT} update && ${APT} install -y ansible