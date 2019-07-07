#!/bin/bash

#set up report paths and cronjobs

freq=(hourly daily weekly monthly)

for when in "${freq[@]}"; do 

	ln -sf ${PWD}/reports/report-$when /usr/local/bin/report-$when 
	
	sudo tee /etc/cron.$when/report-$when << EOF
		MONIT_EVENT="$when Report" MONIT_DESCRIPTION=`/usr/local/bin/report-$when` \
			MONIT_HOST=`hostname` MONIT_DATE=`date -R` MONIT_COLOR="#808080" \
			/usr/local/bin/echo
EOF

done
