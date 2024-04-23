import os
import glob
import datetime as dt

pdym2=(dt.datetime.now()-dt.timedelta(days=2)).strftime('%Y%m%d')

os.chdir('/common/data/model/com/evs/v1.0/global_ens/atmos.'+pdym2+'/')


tar_file_g2g_list = glob.glob('evs.plots.global_ens.atmos.naefs.grid2grid.*.tar')+glob.glob('evs.plots.global_ens.atmos.naefs.precip.*.tar')
#print(tar_file_g2g_list)

for tar_file in tar_file_g2g_list:
    print(f"Copying {tar_file} to global_ens g2g atmos prod")
    os.system("cp -v "+tar_file+" /home/people/emc/www/htdocs/users/verification/global/naefs/prod/tar_files")

os.chdir('/home/people/emc/www/htdocs/users/verification/global/naefs/prod/tar_files')

#print(tar_file_g2g_list)
for tar_file in tar_file_g2g_list:
    print(f"Untarring {tar_file}")
    image_dir = '../grid2grid/images/'
    if not os.path.exists(image_dir):
        os.makedirs(image_dir)
    os.system('tar -xvf '+tar_file+' -C '+image_dir)
    os.remove(tar_file)

os.chdir('/common/data/model/com/evs/v1.0/global_ens/atmos.'+pdym2+'/')

tar_file_g2o_list = glob.glob('evs.plots.global_ens.atmos.naefs.grid2obs.*.tar')

for tar_file in tar_file_g2o_list:
    print(f"Copying {tar_file} to global_ens g2o atmos prod")
    os.system("cp -v "+tar_file+ " /home/people/emc/www/htdocs/users/verification/global/naefs/prod/tar_files")

os.chdir('/home/people/emc/www/htdocs/users/verification/global/naefs/prod/tar_files')

#print(tar_file_g2o_list)
for tar_file in tar_file_g2o_list:
    print(f"Untarring {tar_file}")
    image_dir = '../grid2obs/images/'
    if not os.path.exists(image_dir):
        os.makedirs(image_dir)
    os.system('tar -xvf '+tar_file+' -C '+image_dir)
    os.remove(tar_file)

