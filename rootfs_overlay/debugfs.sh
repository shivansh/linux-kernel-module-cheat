#!/bin/sh
set -ex
mkdir -p /debugfs
# We also added a fstab entry that mounts this under /sys/kernel/debug autmoatically.
# That is the most common place to mount it.
mount -t debugfs none /debugfs
insmod /debugfs.ko
cd /debugfs/lkmc_debugfs
cat myfile
# => 42
