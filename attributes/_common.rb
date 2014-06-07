#
# Cookbook Name:: openstack-clients
# Attributes:: common
#
# Copyright (C) 2014
#
#


case node['platform_family']
when "debian", "ubuntu"
  default['openstack-clients']['packages'] = %w{libffi-dev}
when "rhel", "centos", "fedora"
  default['openstack-clients']['packages'] = %w{libffi-devel openssl-devel zlib-devel bzip2-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel}
end

# Install needed packages
# package "libffi-dev"
