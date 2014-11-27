#!/bin/bash

passwd -d root
echo "jonathan" | passwd --stdin root
/usr/bin/monit -d 10 -Ic /etc/monitrc
