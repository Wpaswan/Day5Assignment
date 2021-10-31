#/bin/bash
for((i=0; i<10; i++))
do
number[$i]=$((RANDOM%900+100))
done
echo ${number[@]}
min=${number[0]}
max=${number[0]}
secmax=0
secmin=0
for((i=0; i<10; i++))
do
n=${number[$i]}
if [ $min -gt $n ]
then
min=$n
secmin=$min
fi
if [ $n -gt $min -a $n -lt $secmin ]
then
secmin=$n
fi
if [ $max -lt $n ]
then
max=$n

fi
done
echo ${number[@]}
echo "maximum=$max"
echo "minimum=$min"
echo "secmin=$secmin"
secmax=$max
secmin=$min

for((i=0; i<10; i++))
do
n1=${number[$i]}
if [ $secmax -gt $n1 ]
then
secmax=$n1
fi
if [ $secmin -lt $n1 ]
then
secmin=$n1
fi
done
echo "secmax=$secmax"
echo "secmin=$secmin"



