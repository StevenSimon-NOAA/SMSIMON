#PBS -N transfer_rzdm_emc_para_global_ens_atmos_plots
#PBS -o /u/steven.simon/cron_jobs/logs/log_transfer_rzdm_emc_para_global_ens_atmos_plots.out
#PBS -e /u/steven.simon/cron_jobs/logs/log_transfer_rzdm_emc_para_global_ens_atmos_plots.out
#PBS -S /bin/bash
#PBS -q dev_transfer
#PBS -A VERF-DEV
#PBS -l walltime=03:00:00
#PBS -l place=shared,select=1:ncpus=1:mem=25GB
#PBS -l debug=true
#PBS -V

export PDY2m1=$(date -d "48 hours ago" '+%Y%m%d')
rsync -ahr -P /lfs/h2/emc/ptmp/emc.vpppg/evs/v1.0/plots/global_ens/atmos.${PDY2m1}/*.tar ssimon@emcrzdm.ncep.noaa.gov:/home/people/emc/www/htdocs/users/verification/global/gefs/para/atmos/tar_files/.

