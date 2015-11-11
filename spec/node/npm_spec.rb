require 'spec_helper'

describe package('vsoagent-installer') do
  it { should be_installed.by('npm') }
end

describe package('gulp') do
  it { should be_installed.by('npm') }
end
