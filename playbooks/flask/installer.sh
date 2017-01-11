#!/bin/bash

test -d /etc/ansible && test -f /etc/ansible/hosts \
 || mkdir -p /etc/ansible && touch /etc/ansible/hosts

test `grep -c 'localhost ansible_connection=local' /etc/ansible/hosts` == 0 && \
 echo 'localhost ansible_connection=local' >> /etc/ansible/hosts

ansible-playbook ./install-flask.yml