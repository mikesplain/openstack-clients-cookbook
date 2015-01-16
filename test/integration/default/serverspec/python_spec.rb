require 'serverspec'

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
  when 'centos', 'redhat'
    pip_location = '/usr/bin/pip'
  when 'ubuntu', 'debian'
    pip_location = '/usr/local/bin/pip'
  when 'fedora'
    pip_location = '/usr/bin/pip'
  end

  describe file(pip_location) do
    it { should be_executable }
  end
end
