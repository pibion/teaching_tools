echo "first_name,middle_name,last_name,email" > roster.csv
awk 'BEGIN { FS = "," } ; { if(NR>1) {print $5",," $4"," $9} }' phys2331_Fall2020.csv  | sed s/\"//g >> roster.csv