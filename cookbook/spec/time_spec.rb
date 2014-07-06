require 'chefspec'  
require_relative 'spec_helper'

describe 'cb-common::time' do  
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the timezone-ii::default recipe' do
    expect(chef_run).to include_recipe('timezone-ii::default')
  end  
  
  it 'includes the ntp::default recipe' do
    expect(chef_run).to include_recipe('ntp::default')
  end  
end  