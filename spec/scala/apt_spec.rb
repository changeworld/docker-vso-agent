require 'spec_helper'
require 'scala/scala_helper'

describe package('build-essential') do
  it { should be_installed.by('apt') }
end

describe package('curl') do
  it { should be_installed.by('apt') }
end

describe package('git') do
  it { should be_installed.by('apt') }
end

describe package('wget') do
  it { should be_installed.by('apt') }
end

describe package('default-jdk') do
  it { should be_installed.by('apt') }
end

describe package('scala') do
  it { should be_installed.by('apt') }
end

describe package('nodejs') do
  it { should be_installed.by('apt') }
end

describe package('npm') do
  it { should be_installed.by('apt') }
end
