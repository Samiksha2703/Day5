#!/bin/bash/

echo "Day 5 Practice Problem"

echo "Sequence Practice Problem"


#1. Use RANDOM function ((RANDOM)) to get single digit

random=$(($RANDOM % 10))

echo "Random number is $random"



#2. Use RANDOM to get Dice Number between 1 to 6


dice=$(( $RANDOM % 6 + 1 ));

echo "The number on dice is $dice"



#3. Add two Random Dice Number and Print the Result Solution :


add=0

for in in `seq 2`

do

random=$(( $RANDOM % 6 + 1 ));

echo $random

add=$(( $add + $random ))

done

echo "Addition of two random number is $add"


#4. Write a program that reads 5 random 2 digit values, then find their sum and the average


sum=0
avg=0

for in in `seq 5`

do

random=$(( $RANDOM % 100 ));

echo $random

sum=$(( $sum + $random ))

done

avg=`echo "scale=2; $sum / 5" \ bc -l`

echo "Sum of five two digit random number is $sum"

echo "Average of five two digit random number is $avg"


#5. Unit Conversion


#a 1ft =12 in then 42 in = ? ft

#Rectangular plot of 60 feet x 40 feet in meters c Calculate area of 25 such plots in acres

#Calculate area of 25 such plot in acres


echo "a. 1ft = 12 in then 42 in = ? ft"

ft=`echo "scale=2; 42/12 " | bc -l`

echo "42 inch = $ft"


echo "b. Rectangular plot of 60 feet x 40 feet in meters"

a=`echo "scale=2; 60*0.305" | bc -l`

b=`echo "scale=2; 40*0.305" | bc -l`

echo "Rectangular plot in meter is $a x $b"


echo "c. Calculate area of 25 such plots in acres"

area=`echo "scale=2; $a*$b" | bc -l`

acres=`echo "scale=2; 25*$area*0.000247105" | bc -l`

echo "The area of 25 plots in acers is $acres"


