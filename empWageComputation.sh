Welcome to employee wage computation

x=$((RANDOM%2))
if [[ $x -eq 1 ]];then
echo employee is present
else
echo employee is absent
fi

fulldayhr=8
perhrwage=20
echo Daily Employee Wage is: "$(($fulldayhr*$perhrwage))"
