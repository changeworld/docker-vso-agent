require 'spec_helper'
require 'ruby/ruby_helper'

describe package('build-essential') do
  it { should be_installed.by('apt') }
end

describe package('curl') do
  it { should be_installed.by('apt') }
end

describe package('git') do
  it { should be_installed.by('apt') }
end

describe package('zlib1g-dev') do
  it { should be_installed.by('apt') }
end

describe package('libssl-dev') do
  it { should be_installed.by('apt') }
end

describe package('libreadline-dev') do
  it { should be_installed.by('apt') }
end

describe package('libyaml-dev') do
  it { should be_installed.by('apt') }
end

describe package('libxml2-dev') do
  it { should be_installed.by('apt') }
end

describe package('nodejs') do
  it { should be_installed.by('apt') }
end

describe package('npm') do
  it { should be_installed.by('apt') }
end
