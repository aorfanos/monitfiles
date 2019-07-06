#!/bin/bash

chmod +x ${PWD}/slack_mssgs/*
ln -s ${PWD}/slack_mssgs/* /usr/local/bin/

cp ${PWD}/conf.d/* /etc/monit/conf.d/ 
