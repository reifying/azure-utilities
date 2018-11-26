#!/bin/bash

USER=$1
chown -R $USER:$USER /home/$USER/.ssh

