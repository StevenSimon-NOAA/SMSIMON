# wrapper.sh
# This script wraps around drive_download_data.sh to run on many dates

# Define incoming arguments
datestart=$1           # for example, 20230101
dateend=$2             # for example, 20230201

echo "Starting on: $datestart"
echo "Ending on: $dateend"

# Define array of dates upon which to operate
while [[ "$datestart" != "$dateend" ]]; do
  # Kick off the driver script
  #echo "./drive_download_data.sh $datestart"
  ./drive_download_data.sh $datestart
  datestart=$(date --date "$datestart + 1 day" +"%Y%m%d")
done
