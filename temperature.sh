#!/bin/bash

while true
do
	wget -o log "http://www.gismeteo.by/" -O page.html
	grep -m 1 "<dd class='value m_temp c'>" page.html > temp
	echo $(sed 's/[^\-\+0-9]//g' temp)
	rm -r log page.html temp
	sleep $(cat time)
done
