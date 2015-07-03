file=06-29-2015_12_20_02_AM_TRM_WW_P4F_CCA_Reactivation_14d_TM_20150629.txt

cat "$file" | awk -F '["|"]' '{print $1,$2,$3,$4,$5}' > bb

gsed -e 's/"|"/ /g' "$file" | awk '{print $2","$4}' > aa 
