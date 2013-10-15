#
# Cookbook Name:: rdiff-backup
# Attributes:: rdiff-backup
#
# Copyright 2013 Piratenfraktion im Landtag NRW
#

default['rdiff-backup']['backup_dir'] = "/backup"
default['rdiff-backup']['etc_dir'] = "/etc/rdiff-backup"
default['rdiff-backup']['user'] = "rdiff-backup"
default['rdiff-backup']['key'] = "id_rsa"

default['rdiff-backup']['cron']['enable'] = true
default['rdiff-backup']['cron']['email'] = "it@piratenfraktion-nrw.de"
default['rdiff-backup']['cron']['lockfile'] = "/tmp/rdiff-backup.lock"

default['rdiff-backup']['autotrim']['enable'] = false
default['rdiff-backup']['autotrim']['timespan'] = "1y"
