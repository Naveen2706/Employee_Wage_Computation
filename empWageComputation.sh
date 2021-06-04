Welcome to employee wage computation

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

while [[ $month != 21 ]];do

W=$((4+((4*$((RANDOM%2))))))
case "$W" in
"8")
		echo wage for fullday: "$(($fulldayhour*$wagephour))"
		totalhr=$(($totalhr+$W))
		((month++))
;;

"4")
		echo part time wage  : "$(($parttimehour*$wagephour))"
		totalhr=$(($totalhr+$W))
		((month++))
;;
esac
if [[ $totalhr -ge 100 ]];then
		echo 100 hours limit reached
		break
fi

done

totalwage=$(($totalhr*20))
echo wage for working for a month:"$totalwage"
