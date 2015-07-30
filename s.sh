file=a
sed "s/\"//g" $file |awk -F "," '{if($3=="Y") print($2"_RUN")}'>aa
filename=`awk '{print $1}' aa`
for f in $filename
do
  >$f
done
rm aa
