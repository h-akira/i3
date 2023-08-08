# GoogleDriveをマウントする．
mount_dir=$HOME/GoogleDrive
mkdir -p ${mount_dir}
label=private
if [ -z "$(ls $mount_dir)" ]; then
  google-drive-ocamlfuse -label ${label} ${mount_dir}
fi

# xkeysnailを起動
sh ${HOME}/.local/opt/xkeysnail/src/xkeysnail-start.sh
