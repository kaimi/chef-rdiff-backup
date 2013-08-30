#
# Cookbook Name:: rdiff-backup
# Attributes:: rdiff-backup
#
# Copyright 2013 Piratenfraktion im Landtag NRW
#

default['rdiff-backup']['backup_dir'] = "/backup"
default['rdiff-backup']['etc_dir'] = "/etc/rdiff-backup"
default['rdiff-backup']['var_dir'] = "/var/rdiff-backup"
default['rdiff-backup']['user'] = "rdiff-backup"
default['rdiff-backup']['key'] = "id_rsa"
