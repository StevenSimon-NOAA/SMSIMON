# wrapper.sh
# This script wraps around drive_download_data.sh to run on many dates

# Define incoming arguments
datestart=$1           # for example, 20230101
dateend=$2             # for example, 20230201
export HPSS_SCRIPT_ROOT=/lfs/h2/emc/vpppg/noscrub/steven.simon/hpss_scripts
cd $HPSS_SCRIPT_ROOT
echo "Starting on: $datestart"
echo "Ending on: $dateend"

# Define array of dates upon which to operate
while [[ "$datestart" != "$dateend" ]]; do
  # Kick off the driver script
  #echo "./drive_download_data.sh $datestart"
  echo "sh $HPSS_SCRIPT_ROOT/drive_download_data.sh $datestart"
  #./drive_download_data.sh $datestart
  sh $HPSS_SCRIPT_ROOT/drive_download_data.sh $datestart
  datestart=$(date --date "$datestart + 1 day" +"%Y%m%d")
done
