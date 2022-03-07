arr=( $(cat buildnum.txt | awk -F "." '{print $1, $2, $3}') )
num1=${arr[0]}
num2=${arr[1]}
num3=${arr[2]}

newversion="$num1.$num2.$((num3+1))"
oldversion="$num1.$num2.$num3"

echo "$newversion" > buildnum.txt

echo "version changed from $oldversion to  $newversion"
