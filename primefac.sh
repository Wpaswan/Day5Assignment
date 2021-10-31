#/bin/bash
for((i=0; i<10; i++))
do
number[$i]=$((RANDOM%900+100))
done
for((i=1; i<10; i++))
do
n=${number[$i]}
j=1
c=0
for((j=1; j<$n; j++))
do

  if [ $n % $j -eq 0 ]
   then
   c=$(($c + 1))
  fi

done
if [ $c -eq 2 ]
then
echo "Prime=$n"
else
echo "not prime=$n"
fi
done
echo "$number is a prime number."


