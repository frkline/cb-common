#
# Cookbook Name:: cb-common
# Recipe:: default
#

# Configure hosts
include_recipe 'cb-common::hosts'

# Configure time
include_recipe 'cb-common::time'
