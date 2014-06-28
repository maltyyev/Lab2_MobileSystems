#!/bin/bash

while true
do
	file="page.html"
	url="http://www.gismeteo.by/"
	log="log.txt"
	wget -o log $url -O $file
	htmlfile=$(<page.html)
	grep -m 1 "<dd class='value m_temp c'>" $file > temp
	echo $(sed 's/[^\-\+0-9]//g' temp)
	sleep $(cat time)
done

