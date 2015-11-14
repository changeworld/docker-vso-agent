require 'spec_helper'
require 'ruby/ruby_helper'

describe package('vsoagent-installer') do
  it { should be_installed.by('npm') }
end
