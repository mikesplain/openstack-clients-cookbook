#
# Cookbook Name:: openstack-clients
# Recipe:: common
#
# Copyright (C) 2014
#
#
# This recipe allows you to manage Python install in a common location

case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'apt'
when 'centos', 'redhat', 'amazon', 'scientific'
  include_recipe 'yum-epel'
when 'fedora'
  include_recipe 'yum'
end

include_recipe 'build-essential'

# Install needed packages
node['openstack-clients']['packages'].each do |package|
  package package
end

# For some reason, fedora doesn't install the latest version of openssl...
case node['platform_family']
when 'fedora'
  package 'openssl-devel' do
    action :upgrade
  end
end

# Make sure Python and pip are installed
include_recipe 'python'

# All clients require keystone client
python_pip 'python-keystoneclient'
