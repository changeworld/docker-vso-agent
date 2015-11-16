require 'spec_helper'
require 'scala/scala_helper'

describe package('vsoagent-installer') do
  it { should be_installed.by('npm') }
end
