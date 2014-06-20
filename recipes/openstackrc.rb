#
# Cookbook Name:: openstack-clients
# Recipe:: common
#
# Copyright (C) 2014
#

# Sets up and configures openstack openrc files

configs = node['openstack-clients']['openstackrc']['configs'].map{
  |name, value| name
}

Chef::Log.info "Here are the OpenStack configs we found: #{configs}"

# Reformat configs for openrc
configs = configs.map{|name| "\"#{name}\""}.join(" ")

template "#{node['openstack-clients']['openstackrc']['binpath']}/openstack" do
  source "openstack.openrc.sh.erb"
  mode node['openstack-clients']['openstackrc']['mode']
  owner node['openstack-clients']['openstackrc']['user']
  group node['openstack-clients']['openstackrc']['group']
  variables({
    configs: configs
  })
end
