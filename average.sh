read num1

for ((i=1; i<=$num1; i++)) do
    read num
    sum=$(($sum+$num))
done

printf "%.3f" $(echo $sum/$num1 | bc -l)
