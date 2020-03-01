cat < names.txt
echo hello && cat < names.txt
echo hello || cat < names.txt && echo second hello
echo hello2 || (cat<names.txt && echo hello3)
exit

