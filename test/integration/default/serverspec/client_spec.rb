require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'clients' do

  puts "Family: #{os[:family]}"

  case os[:family]
  when 'Centos', 'RedHat'
    exec_location = '/usr/bin'
  when 'Ubuntu', 'Debian'
    exec_location = '/usr/local/bin'
  when 'Fedora'
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
