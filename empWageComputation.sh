Welcome to employee wage computation

declare -A dandtwage
declare -A Day

x=$((RANDOM%2))
case "$x" in
   "1")
	echo employee is present
   ;;
   "0")
	echo employee is absent
   ;;
esac

fulldayhour=8
parttimehour=4
wagephour=20
month=1
totalhr=0
totalwage=0
d=0
dailywage=0
check=0

function workhours
{
while [[ $month != 21 ]];do

   W=$((4+((4*$((RANDOM%2))))))

   check=$(($month%5))

   case "$check" in
      "1")
		Day[$month]="Monday"
 		echo "Monday"
       ;;
      "2")
		Day[$month]="Tuesday"
        	echo "Tuesday"
       ;;
      "3")
		Day[$month]="Wednusday"
		echo "Wednusday"
       ;;
      "4")
		Day[$month]="Thursday"
		echo "Thursday"
       ;;
      "0")
		Day[$month]="Friday"
		echo "Friday"
       ;;
   esac


    case "$W" in
       "8")
    		dailywage=$(($W*20))
    		totalhr=$(($totalhr+$W))
    		dandtwage[$d]=$dailywage
		echo dailywage :${dandtwage[$d]}
		((d++))
		((month++))
	;;

	"4")
		dailywage=$(($W*20))
		totalhr=$(($totalhr+$W))
		dandtwage[$d]=$dailywage
		echo dailywage :${dandtwage[$d]}
		((d++))
		((month++))
 	;;
    esac
    done

 echo total work hours are "$totalhr"
 totalwage=$(($totalhr*20))
 dandtwage[$d]=$totalwage
 echo total wage : ${dandtwage[$d]}
}

workhours
