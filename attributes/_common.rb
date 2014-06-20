#
# Cookbook Name:: openstack-clients
# Attributes:: common
#
# Copyright (C) 2014
#
#


case node['platform']
when "debian", "ubuntu"
  default['openstack-clients']['packages'] = %w{libffi-dev}
when "centos", "redhat", "amazon", "scientific"
  default['openstack-clients']['packages'] = %w{libffi-devel openssl-devel zlib-devel bzip2-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel}
end

# Install needed packages
# package "libffi-dev"
