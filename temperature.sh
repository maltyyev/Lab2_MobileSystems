#!/bin/bash

while true
do
	file="page.html"
	url="http://www.meteo.by/"
	log="log.txt"
	wget -o log $url -O $file
	htmlfile=$(<page.html)
	grep '<p class="t ">' $file > temp
	echo $(sed 's/[^\-\+0-9]//g' temp)
	sleep $(cat time)
done

