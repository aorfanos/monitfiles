#!/bin/bash

chmod +x ${PWD}/slack_mssgs/*
ln -s ${PWD}/slack_mssgs/* /usr/local/bin/

cp ${PWD}/conf-available/* /etc/monit/conf-available/ 
cp ${PWD}/reports/report-{hourly,weekly,monthly} /etc/cron.hourly/report-{hourly,weekly,monthly}
