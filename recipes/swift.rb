#
# Cookbook Name:: openstack-clients
# Recipe:: swift
#
# Copyright (C) 2014

# Make sure Python and pip are installed from a central location
include_recipe 'openstack-clients::_common'

python_pip 'python-swiftclient'
