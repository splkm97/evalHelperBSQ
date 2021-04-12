den=1
wid=10
hei=10

while [ ${den} -le 3 ]
do
	hei=10
	while [ ${hei} -le 30 ]
	do
		wid=10
		while [ ${wid} -le 40 ]
		do
			echo "=================== map  ==================="
			echo "width: ${wid} height: ${hei} density: ${den}"
			./maps/mapgen.pl ${wid} ${hei} ${den} . o x > "examples/ex${wid}${hei}${den}.map"
			cat "exampless/ex${wid}${hei}${den}.map"
			echo "============================================"
			echo "================== result =================="
			echo "width: ${wid} height: ${hei} density: ${den}"
			./bsq.out "examples/ex${wid}${hei}${den}.map"
			./bsq.out "examples/ex${wid}${hei}${den}.map" > "examples/ex${wid}${hei}${den}.ans"
			echo "============================================"
			wid=`expr ${wid} \+ 10`
		done
		hei=`expr ${hei} \+ 10`
	done
	((den++))
done
