#
# Cookbook Name:: openstack-clients
# Recipe:: common
#
# Copyright (C) 2014
#

# Make sure Python and pip are installed from a central location
include_recipe 'openstack-clients::_common'

# Install all tools

include_recipe 'openstack-clients::nova'
include_recipe 'openstack-clients::glance'
include_recipe 'openstack-clients::swift'
include_recipe 'openstack-clients::ceilometer'
include_recipe 'openstack-clients::neutron'
include_recipe 'openstack-clients::cinder'
include_recipe 'openstack-clients::trove'
include_recipe 'openstack-clients::heat'
include_recipe 'openstack-clients::barbican'
include_recipe 'openstack-clients::sahara'
