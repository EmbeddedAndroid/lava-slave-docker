#!/bin/bash
# Set LAVA Master IP
if [[ -n "$LAVA_MASTER" ]]; then
	sed -i -e "s/{LAVA_MASTER}/$LAVA_MASTER/g" /etc/lava-dispatcher/lava-slave
	sed -i -e "s/{LAVA_MASTER}/$LAVA_MASTER/g" /etc/lava-coordinator/lava-coordinator.conf
fi
service ser2net start
service tftpd-hpa start
service lava-slave start

