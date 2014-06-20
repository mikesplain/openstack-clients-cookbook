require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe service('chef-client') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('monit') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('postfix') do
  it { should be_enabled   }
  it { should be_running   }
end

# Add test for chef push
# describe port(10050) do
#   it { should be_listening }
# end
#
