cat < names.txt | tr A-Z a-z
echo hello | tr a-z A-Z
echo parenOr || (cat < names.txt | tr a-z A-Z)
exit

