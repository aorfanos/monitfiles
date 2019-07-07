#!/bin/bash

chmod +x ${PWD}/{slack_mssgs,reports}/*
ln -s ${PWD}/slack_mssgs/* /usr/local/bin/

cp ${PWD}/conf-available/* /etc/monit/conf-available/ 
