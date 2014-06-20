[![Dependency Status](https://gemnasium.com/mikesplain/openstack-clients-cookbook.svg)](https://gemnasium.com/mikesplain/openstack-clients-cookbook)


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
