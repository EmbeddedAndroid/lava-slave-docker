#!/bin/bash
/root/scripts/pdu05.exp 0 $1
if [[ -n "$2" ]]; then
	sleep $2
else
	sleep 2
fi
/root/scripts/pdu05.exp 1 $1
