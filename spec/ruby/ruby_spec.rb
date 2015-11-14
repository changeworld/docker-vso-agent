require 'spec_helper'
require 'ruby/ruby_helper'

# rbenv has been installed?
describe command('source /etc/profile.d/rbenv.sh; which rbenv') do
  let(:disable_sudo) { true }
  its(:stdout) { should eq "/root/.rbenv/bin/rbenv\n" }
end

describe file('/etc/profile.d/rbenv.sh') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
  its(:content) { should match(/^eval "\$\(rbenv init -\)"$/) }
end

# ruby-build has been installed?
describe file('/root/.rbenv/plugins/ruby-build/.git/') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end

# Ruby has been installed?
['2.1.7', '2.2.3'].each do |ruby_version|
  describe command("source /etc/profile.d/rbenv.sh; rbenv versions | grep #{ruby_version}") do
    let(:disable_sudo) { true }
    its(:stdout) { should match(/#{Regexp.escape(ruby_version)}/) }
  end
end
