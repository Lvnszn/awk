file=06-29-2015_12_20_02_AM_TRM_WW_P4F_CCA_Reactivation_14d_TM_20150629.txt

#'["|"]' "|" is two byte? Wait for resolve
#-F represent separator
#-f represent file
#awk -F '["|"]' '{print $2}' "$file"

#numberline 101
awk -F '/101/{print $5}' "$file" > bb

#if without End, the script will run every time, otherwise only once
awk '/120545084047/ {count++;} END {print count "123"}' 06-29-2015_12_20_02_AM_TRM_WW_P4F_CCA_Reactivation_14d_TM_20150629.txt

#count number
cut -d '"' -f 14 08-03-2015_02_12_02_AM_TRM_EU_P4F_CCA_CRM_0805_NRW_Tiberian4_AUG15_20150803.txt | awk '/90D/ {count++;} END {print count}'
