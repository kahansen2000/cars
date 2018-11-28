#! /bin/bash
# cars.sh
#Katherine Hansen

echo "Welcome to my cars program"
answer=1
while [ $answer -eq 1]
echo "1 Add a car"
echo "2 View the list of cars"
echo "3 Quit the program"
read answer	
if[ $answer -eq $1 ]
	echo "Enter the year"
	read year
	echo "Enter the Make"
	read make
	echo "Enter the model"
	read model
	cat "$year:$make:$model" >> My_old_cars
