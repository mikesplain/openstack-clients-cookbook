[![Build Status](https://travis-ci.org/mikesplain/openstack-clients-cookbook.svg)](https://travis-ci.org/mikesplain/openstack-clients-cookbook)[![Dependency Status](https://gemnasium.com/mikesplain/openstack-clients-cookbook.svg)](https://gemnasium.com/mikesplain/openstack-clients-cookbook)


OpenStack-Clients Cookbook
==========================

This cookbook installs the Python Openstack Clients:

* [python-novaclient](https://github.com/openstack/python-novaclient)
* [python-keystoneclient](https://github.com/openstack/python-keystoneclient)
* [python-ceilometerclient](https://github.com/openstack/python-ceilometerclient)
* [python-glanceclient](https://github.com/openstack/python-glanceclient)
* [python-swiftclient](https://github.com/openstack/python-swiftclient)
* [python-neutronclient](https://github.com/openstack/python-neutronclient)
* [python-cinderclient](https://github.com/openstack/python-cinderclient)
* [python-troveclient](https://github.com/openstack/python-troveclient)
* [python-heatclient](https://github.com/openstack/python-heatclient)
* [python-barbicanclient](https://github.com/openstack/python-barbicanclient)
* [python-saharaclient](https://github.com/openstack/python-saharaclient)

Requirements
------------
### Platforms
- Debian, Ubuntu
- CentOS 6+, Red Hat 6+, Fedora

### Dependencies
- Python

Usage
------
You can include all clients easily by adding `recipe[openstack-clients]`
or you can include specific clients by calling their recipes directly `recipe[openstack-clients::nova]` or `recipe[openstack-clients::glance]`, etc.

### OpenStackRC
To use `openstack-clients::openstackrc` you can attributes to automatically configure environment variables when the script is called.  Set these attributes in a wrapper cookbook, role or environment.  In the future you will also be able to set these in a data bag.

```
default['openstack-clients']['openstackrc']['configs']['project1'] = {
  OS_AUTH_URL: 'https://identity.project1.openstack.com:5443/v2.0',
  OS_TENANT_ID: '29h8gwh0wg0h2th0',
  OS_TENANT_NAME: 'project1',
  OS_USERNAME: 'project1'
}

default['openstack-clients']['openstackrc']['configs']['project2'] = {
  OS_AUTH_URL: 'https://identity.project2.openstack.com:5443/v2.0',
  OS_TENANT_ID: 'y4j0erg0j40',
  OS_TENANT_NAME: 'project2',
  OS_USERNAME: 'project2'
}
```

Todo
-----
- [ ] Add better documentation of Dependencies
- [ ] Add better tests for each recipe
- [ ] Add Spec tests
- [ ] Add openrc.sh configs

License & Authors
-----------------
- Author: Mike Splain <mikesplain@gmail.com>


```text
Copyright 2014 Mike Splain

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
