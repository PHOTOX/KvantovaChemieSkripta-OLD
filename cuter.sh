#!/bin/bash

nchapters=21

page[1]=0
page[2]=8
page[3]=22
page[4]=36
page[5]=42
page[6]=51
page[7]=57
page[8]=62
page[9]=67
page[10]=75
page[11]=90
page[12]=96
page[13]=99
page[14]=110
page[15]=119
page[16]=128
page[17]=134
page[18]=139
page[19]=143
page[20]=146
page[21]=149
page[22]=153

if [[ ! -d PDF ]];then
	mkdir PDF
fi

for ((i=1;i<=nchapters;i++ )) {
	let ii=i+1
	let page2=${page[$ii]}
	let page1=${page[$i]}+1
pdftk PIGA2014_KvantovaChemie.pdf cat $page1-$page2 output PDF/$i.pdf
}
