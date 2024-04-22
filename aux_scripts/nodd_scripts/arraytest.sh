
# It turns out wildcards (*) are not support for wget. So you will need to do several nested loops and arrays.

# wget command example
#wget https://noaa-gefs-pds.s3.amazonaws.com/gefs.YYYYMMDD/CC/atmos/pgrb2ap5/gep${member}.t${cyc}z.pgrb2a.0p50.f${flead}
echo $(date)

url="https://noaa-gefs-pds.s3.amazonaws.com"
dest="/lfs/h2/emc/vpppg/noscrub/steven.simon/nodd_output"
PDY=$1
memberarr="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
cyclearr="00 06 12 18"
forecastleadarr="000 006 012 018 024 030 036 042 048 054 060 066 072 078 084 090 096 102 108 114 120 126 132 138 144 150 156 162 168 174 180 186 192 198 204 210 216 222 228 234 240 246 252 258 264 270 276 282 288 294 300 306 312 318 324 330 336 342 348 354 360 366 372 378 384"

for cyc in ${cyclearr[@]}
do
  for mem in ${memberarr[@]}
  do
    for flead in ${forecastleadarr[@]}
    do	    
      echo $cyc
      echo $mem
      echo $flead
      if [ ! -d $dest/gefs.${PDY}/${cyc}/atmos ]; then
          mkdir -p $dest/gefs.${PDY}/${cyc}/atmos
      fi
      echo "wget -O $dest/gefs.${PDY}/${cyc}/atmos/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead} $url/gefs.${PDY}/${cyc}/atmos/pgrb2ap5/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead}"
      #wget -O $dest/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead} $url/gefs.20240319/${cyc}/atmos/pgrb2ap5/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead} -q -o /dev/null
      wget -O $dest/gefs.${PDY}/${cyc}/atmos/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead} $url/gefs.${PDY}/${cyc}/atmos/pgrb2ap5/gep${mem}.t${cyc}z.pgrb2a.0p50.f${flead} -q -o /dev/null
    done  
  done
done

echo $(date)
