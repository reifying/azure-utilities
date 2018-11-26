#!/bin/bash

USER=$1
KEY="$2 $3 $4"

SUDO_FILE=/etc/sudoers.d/91-admin-users

adduser --disabled-password --gecos "" $USER && \
mkdir /home/$USER/.ssh && \
chmod 700 /home/$USER/.ssh && \
echo "$KEY" > /home/$USER/.ssh/authorized_keys && \
chmod 600 /home/$USER/.ssh/authorized_keys && \
chown -R $USER:$USER /home/$USER/.ssh && \
echo "$USER ALL=(ALL) NOPASSWD:ALL" >> $SUDO_FILE && \
chmod 0440 $SUDO_FILE
