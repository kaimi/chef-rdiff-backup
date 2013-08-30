#
# Cookbook Name:: rdiff-backup
# Definition:: backup_path
#
# Copyright 2013, Piratenfraktion NRW
#

define :backup_path, :path => "/" do
  node['rdiff-backup']['include'] << params[:path]
end
