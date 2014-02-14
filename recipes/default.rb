#
# Cookbook Name:: hosts
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['hosts']['entries'].each do |ip_address, entry|
  hostsfile_entry ip_address do
    hostname entry['hostname']
    unique entry['unique']
    aliases entry['aliases']
    comment entry['comment']
    priority entry['priority']
    action entry['action']
  end
end
