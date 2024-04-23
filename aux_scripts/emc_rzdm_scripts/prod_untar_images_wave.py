import os
import glob
import datetime as dt

pdym1=(dt.datetime.now()-dt.timedelta(days=1)).strftime('%Y%m%d')

os.chdir('/common/data/model/com/evs/v1.0/global_ens/wave.'+pdym1+'/')

tar_file_list = glob.glob('evs.plots.global_ens.wave.*.tar')

for tar_file in tar_file_list:
    print(f"Copying {tar_file} to global_ens g2o wave prod")
    os.system("cp -v "+tar_file+ " /home/people/emc/www/htdocs/users/verification/global/gefs/prod/wave/tar_files")

os.chdir('/home/people/emc/www/htdocs/users/verification/global/gefs/prod/wave/tar_files')

for tar_file in tar_file_list:
    print(f"Untarring {tar_file}")
    image_dir = '../grid2obs/images/'
    if not os.path.exists(image_dir):
        os.makedirs(image_dir)
    os.system('tar -xvf '+tar_file+' -C '+image_dir)
    os.remove(tar_file)

