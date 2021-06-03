Welcome to employee wage computation

declare -A dandtwage

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
month=0
totalhr=0
totalwage=0
d=0
dailywage=0

function workhours
{
while [[ $month != 21 ]];do

W=$((4+((4*$((RANDOM%2))))))
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
