#!/bin/bash

cd /lfs/h2/emc/ptmp/steven.simon/evs_out

qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/wpcworkspace/EVS/dev/drivers/scripts/stats/global_ens/jevs_global_ens_gefs_atmos_grid2grid_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/wpcworkspace/EVS/dev/drivers/scripts/stats/global_ens/jevs_global_ens_gefs_atmos_grid2obs_stats.sh
sleep 120
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/wpcworkspace/EVS/dev/drivers/scripts/stats/global_ens/jevs_global_ens_gefs_atmos_precip_stats.sh
