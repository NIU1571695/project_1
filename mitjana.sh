#!/bin/bash
deportistas=`wc -l < esportistes1`
echo numero de lineas: $deportistas
i=1
suma=0
media=0
while [ $i -le $deportistas ]
do
	any=`head -$i esportistes1 | tail -1 | cut -d: -f4`
	echo $any
	let edat=2020-$any
	let suma=$suma+edat
	let i=i+1
done
let media=$suma/$deportistas
echo la media de edad es: $media
m= bc<<<"scale=2;$suma/$deportistas"
echo Lamitjana amb decimals es: $m
