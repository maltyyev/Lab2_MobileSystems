#!/bin/bash

while true
do
	wget -o log "http://www.meteo.by/" -O page.html
	grep -A 6 '<p class="t ">' page.html > temp
	echo $(sed 's/[^\-\+0-9]//g' temp)
	rm log page.html temp
	sleep $(cat time)
done
