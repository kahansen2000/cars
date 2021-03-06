#! /bin/bash
# cars.sh
#Katherine Hansen

echo "To make a choice, enter the number you'd like to choose"
PS3='Enter your next choice: '
options=("Add a car" "View the cars" "Quit")
select opt in "${options[@]}"
do      
    case $opt in
        "Add a car")
            echo "What is the year of the car? "
                read year
                echo "What is the make of the car? "
                read make 
                echo "What is the model of the car? "
                read model 
                echo "$year:$make:$model" >> My_old_cars
            ;; 
        "View the cars")
            sort My_old_cars
            read -r  My_old_cars
            ;;
	"Quit")
           echo "Thank you! Goodbye."
           break
            ;;
    esac
done
