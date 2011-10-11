#!/tmp/busybox sh
#
# Filsystem Conversion Script for Samsung Galaxy SL
# (c) 2011 by Teamhacksung
#

set -x
export PATH=/:/sbin:/system/xbin:/system/bin:/tmp:$PATH

# make sure sdcard is mounted
if ! /tmp/busybox grep -q /mnt/sdcard /proc/mounts ; then
    /tmp/busybox mkdir -p /mnt/sdcard
    /tmp/busybox umount -l /dev/block/mmcblk0p1
    if ! /tmp/busybox mount -t vfat /dev/block/mmcblk0p1 /mnt/sdcard ; then
        /tmp/busybox echo "Cannot mount sdcard."
        exit 1
    fi
fi

# remove old log
rm -rf /mnt/sdcard/cyanogenmod.log

# everything is logged into /sdcard/cyanogenmod.log
exec >> /mnt/sdcard/cyanogenmod.log 2>&1

# make sure efs is mounted
if ! /tmp/busybox grep -q /efs /proc/mounts ; then
    /tmp/busybox mkdir -p /efs
    /tmp/busybox umount -l /dev/block/stl3
    if ! /tmp/busybox mount -t rfs /dev/block/stl3 /efs ; then
        /tmp/busybox echo "Cannot mount efs."
        exit 2
    fi
fi

# create a backup of efs
if /tmp/busybox test -e /mnt/sdcard/backup/efs ; then
    /tmp/busybox mv /mnt/sdcard/backup/efs /mnt/sdcard/backup/efs-$$
fi
/tmp/busybox rm -rf /mnt/sdcard/backup/efs
    
/tmp/busybox mkdir -p /mnt/sdcard/backup/efs
/tmp/busybox cp -R /efs/ /mnt/sdcard/backup

#
# filesystem conversion
#

# format system if not ext4
if ! /tmp/busybox mount -t ext4 /dev/block/stl9 /system ; then
    /tmp/busybox umount /system
    /tmp/make_ext4fs -b 4096 -g 32768 -i 8192 -I 256 -a /data /dev/block/stl9
fi

# format datadata if not ext4
if ! /tmp/busybox mount -t ext4 /dev/block/stl10 /datadata ; then
    /tmp/busybox umount /datadata
    /tmp/make_ext4fs -b 4096 -g 32768 -i 8192 -I 256 -a /data /dev/block/stl10
fi

# format cache if not ext4
if ! /tmp/busybox mount -t ext4 /dev/block/stl11 /cache ; then
    /tmp/busybox umount /cache
    /tmp/make_ext4fs -b 4096 -g 32768 -i 8192 -I 256 -a /data /dev/block/stl11
fi

# format data if not ext4
if ! /tmp/busybox mount -t ext4 /dev/block/mmcblk0p3  /data ; then
    /tmp/busybox umount /data
    /tmp/make_ext4fs -b 4096 -g 32768 -i 8192 -I 256 -a /data /dev/block/mmcblk0p3
fi

# restore efs backup
#if /tmp/busybox test -e /sdcard/backup/efs/nv_data.bin ; then
#    /tmp/busybox umount -l /efs
#    /tmp/busybox mkdir -p /efs

#    if ! /tmp/busybox grep -q /efs /proc/mounts ; then
#        if ! /tmp/busybox mount -t ext4 /dev/block/stl3 /efs ; then
#            /tmp/busybox echo "Cannot mount efs."
#            exit 8
#        fi
#    fi

#    /tmp/busybox cp -R /sdcard/backup/efs /
#    /tmp/busybox umount -l /efs
#else
#    /tmp/busybox echo "Cannot restore efs."
#    exit 9
#fi

exit 0
