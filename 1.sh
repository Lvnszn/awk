file=06-29-2015_12_20_02_AM_TRM_WW_P4F_CCA_Reactivation_14d_TM_20150629.txt

#add string 
#a is add
sed '1a just for test' "$file" > cc
rm cc

#delete string
#d is delete
sed '2d' "$file" > cc
rm cc

#global replace
#g is global 
#c is per
#s can replace with a/ c/ d/ i/ p/ s/ 
sed 's/RU/jason_/g' > dd


