require 'spec_helper'

describe service('apache24') do
  it { should be_running }
end
