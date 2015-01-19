require 'serverspec'

describe 'openstackrc' do
  set :path, '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:$PATH'

  describe file('/usr/local/bin/openstack') do
    it { should be_executable }
    its(:content) { should match(/project1/) }
    its(:content) { should match(/project2/) }
  end
  describe command('which openstack') do
    its(:stdout) { should match '/usr/local/bin/openstack' }
  end
end
