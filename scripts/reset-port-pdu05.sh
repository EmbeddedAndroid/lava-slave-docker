#!/bin/bash
/root/scripts/pdu05.exp 0 $1
sleep 2
/root/scripts/pdu05.exp 1 $1
if [[ -n "$2" ]]; then
	echo "Sleeping..."
	sleep $2
fi
