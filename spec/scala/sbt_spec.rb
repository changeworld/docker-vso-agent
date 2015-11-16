require 'spec_helper'
require 'scala/scala_helper'

describe package('sbt') do
  it { should be_installed }
end
