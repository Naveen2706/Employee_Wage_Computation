Welcome to employee wage computation

x=$((RANDOM%2))
if [[ $x -eq 1 ]];then
echo employee is present
else
echo employee is absent
fi

fulldayhour=8
wagephour=20
echo wage for fullday: "$(($fulldayhour*$wagephour))"
 
