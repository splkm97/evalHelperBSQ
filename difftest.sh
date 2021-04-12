den=1
wid=10
hei=10

mkdir diffs

while [ ${den} -le 3 ]
do
	hei=10
	while [ ${hei} -le 30 ]
	do
		wid=10
		while [ ${wid} -le 40 ]
		do
			diff "examples/ex${wid}${hei}${den}.map" "examples/ex${wid}${hei}${den}.ans" > "diffs/ex${wid}${hei}${den}.diff"
			wid=`expr ${wid} \+ 10`
		done
		hei=`expr ${hei} \+ 10`
	done
	((den++))
done
