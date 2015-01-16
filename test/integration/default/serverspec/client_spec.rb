require 'serverspec'

describe 'clients' do
  puts "Family: #{os[:family]}"

  case os[:family]
  when 'centos', 'redhat'
    exec_location = '/usr/bin'
  when 'ubuntu', 'debian'
    exec_location = '/usr/local/bin'
  when 'fedora'
    exec_location = '/bin'
  end

  %w(keystone
     nova
     glance
     swift
     ceilometer
     neutron
     cinder
     trove
     heat
     barbican).each do |client|
    describe file("#{exec_location}/#{client}") do
      it { should be_executable }
    end
  end
end
