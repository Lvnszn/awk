i=0
`find . -name "*.sql" > aa`
`awk '{print $1}' aa|sed 's/\.\///g'>bb`
for f in `awk '{print $1}' bb`
do
  let i+=1
  sed '1d' $f > $f"_2"
  cut -d "," -f1 $f"_2"|tr '[:upper:]' '[:lower:]' > $f"_email"
  cat $f"_email" > "a"$i
  rm $f"_2"
done
rm aa bb

`find . -name "*F2P*sql" > aa`
`awk '{print $1}' aa|sed 's/\.\///g'>bb`
for f in `awk '{print $1}' bb`
do
  let i+=1
  tr -d '\r' < $f|cut -d\, -f3,4 > $f"_out_email"
  cat $f"_out_email">"a"$i
done
rm aa bb

paste -d\, a1 a5 >20151013_Swoop_LC_F2P_ENGAGED.txt
paste -d\, a2 a6 >20151013_Swoop_LC_F2P_ROW.txt
cat a3 a4| sort >FOR_emails.txt
rm a*

sort -t, -k1 20151013_Swoop_LC_F2P_ENGAGED.txt >a1
join -v1 -j1  -t, -o 1.1,1.2,1.3  a1 FOR_emails.txt >20151013_Swoop_LC_F2P_ENGAGED_u.txt

sort -t, -k1 20151013_Swoop_LC_F2P_ROW.txt > a1
join -v1 -j1  -t, -o 1.1,1.2,1.3 a1 FOR_emails.txt > 20151013_Swoop_LC_F2P_ROW_u.txt
