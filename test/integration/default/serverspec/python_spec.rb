require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'python' do

  # it "is listening on port 9418" do
  #   expect(port(9418)).to be_listening
  # end
  #
  # it "has a running service of git-daemon" do
  #   expect(service("git-daemon")).to be_running
  # end

  describe package('python') do
    it { should be_installed }
  end

  case os[:family]
  when 'Centos', 'RedHat'
    pip_location = '/usr/bin/pip'
  when 'Ubuntu', 'Debian'
    pip_location = '/usr/local/bin/pip'
  when 'Fedora'
    pip_location = '/usr/bin/pip'
  end

  describe file(pip_location) do
    it { should be_executable }
  end

end
