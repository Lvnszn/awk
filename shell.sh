file1=1029_KOTFELaunch_F2P_LOW_LEVEL_Active_02.csv 
file2=1029_KOTFELaunch_F2P_OTHER_03.csv 
file=1029_KOTFELaunch_F2P_HIGH_LEVEL_01.csv 

cut -d, -f1 $file1 | tr [:upper:] [:lower:]> aa
cut -d, -f1 $file | tr [:upper:] [:lower:]> bb
cut -d, -f1 $file2 | tr [:upper:] [:lower:] > cc
tr -d '\r' < $file1|cut -d, -f3,4 > a2
tr -d '\r' < $file |cut -d, -f3,4 > b2
tr -d '\r' < $file2|cut -d, -f3,4 > c2
paste -d\, aa a2>1029_KOTFELaunch_F2P_LOW_LEVEL_Active_02.txt
paste -d\, bb b2>1029_KOTFELaunch_F2P_HIGH_LEVEL_01.txt
paste -d\, cc c2>1029_KOTFELaunch_F2P_OTHER_03.txt

cat bb aa|sort > emails.txt

sort -t, -k1 $file2 > email2.txt
join -j1 -v1 -t, -o 1.1,1.2,1.3 email2.txt emails.txt>test1.txt

rm aa a2 bb b2 cc c2
