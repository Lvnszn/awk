file=06-29-2015_12_20_02_AM_TRM_WW_P4F_CCA_Reactivation_14d_TM_20150629.txt

#'["|"]' "|" is two byte? Wait for resolve
#-F represent separator
#-f represent file
#awk -F '["|"]' '{print $2}' "$file"

#numberline 101
awk -F '/101/{print $5}' "$file" > bb

