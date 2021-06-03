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

W=$((4+((4*$((RANDOM%2))))))
case "$W" in
"8")
echo wage for fullday: "$(($fulldayhour*$wagephour))"
echo wage of a month "$((20* $(($fulldayhour*$wagephour))))"

;;
"4")
echo part time wage  : "$(($parttimehour*$wagephour))"
echo wage of a month "$((20* $(($parttimehour*$wagephour))))"

;;
esac

