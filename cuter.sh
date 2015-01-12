#!/bin/bash

nchapters=20

page[1]=0
page[2]=10
page[3]=24
page[4]=30
page[5]=38
page[6]=44
page[7]=49
page[8]=54
page[9]=62
page[10]=77
page[11]=83
page[12]=86
page[13]=96
page[14]=103
page[15]=105
page[16]=110
page[17]=115
page[18]=117
page[19]=121
page[20]=124
page[21]=127

if [[ ! -d PDF ]];then
	mkdir PDF
fi

for ((i=1;i<=nchapters;i++ )) {
	let ii=i+1
	let page2=${page[$ii]}
	let page1=${page[$i]}+1
pdftk PIGA2014_KvantovaChemie.pdf cat $page1-$page2 output PDF/$i.pdf
}
