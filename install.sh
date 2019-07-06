#!/bin/bash

chmod +x slack_mssgs/*
ln -s slack_mssgs/* /usr/local/bin/

cp conf.d/* /etc/monit/conf.d/ 
