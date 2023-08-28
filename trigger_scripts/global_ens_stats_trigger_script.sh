#!/bin/bash

cd /lfs/h2/emc/ptmp/steven.simon/evs_out

qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_cmce_atmos_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_cmce_atmos_grid2obs_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_cmce_atmos_precip_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_cmce_atmos_snowfall_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_cmce_wmo_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_ecme_atmos_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_ecme_atmos_grid2obs_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_ecme_atmos_precip_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_ecme_atmos_snowfall_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_cnv_stats.sh

sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_grid2obs_stats.sh 
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_precip_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_sea_ice_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_snowfall_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_atmos_sst_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_headline_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gefs_wmo_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_gfs_headline_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_naefs_atmos_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_naefs_atmos_grid2obs_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_naefs_atmos_precip_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/EVS/dev/drivers/scripts/global_ens/stats/jevs_global_ens_naefs_headline_grid2grid_stats.sh

