#!/bin/bash

cd /lfs/h2/emc/ptmp/steven.simon/evs_out

qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/gitworkspace/EVS/dev/drivers/scripts/global_ens/prep/jevs_global_ens_atmos_prep.sh
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/gitworkspace/EVS/dev/drivers/scripts/global_ens/prep/jevs_global_ens_naefs_atmos_prep.sh
sleep 4h
qsub /lfs/h2/emc/vpppg/noscrub/steven.simon/gitworkspace/EVS/dev/drivers/scripts/global_ens/prep/jevs_global_ens_headline_prep.sh
