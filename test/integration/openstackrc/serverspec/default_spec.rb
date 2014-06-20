require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'openstackrc' do

  case os[:family]
  when 'Centos', 'RedHat', 'Fedora'
    RSpec.configure do |c|
      c.path = "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin"
    end
  end

  describe file("/usr/local/bin/openstack") do
    it { should be_executable }
    its(:content) { should match /project1/ }
    its(:content) { should match /project2/ }
  end
  describe command("which openstack") do
    it { should return_stdout "/usr/local/bin/openstack"}
  end

end
