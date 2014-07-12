#
# Cookbook Name:: cb-common
# Recipe:: time
#

# Set timezone to UTC
# http://community.opscode.com/cookbooks/timezone-ii
node.normal['tz'] = 'UTC'
node.normal['timezone']['use_symlink'] = true
include_recipe 'timezone-ii'

# Start NTP with default timeservers for local geography
# http://community.opscode.com/cookbooks/ntp
# http://support.ntp.org/bin/view/Servers/NTPPoolServers
node.normal['ntp']['servers'] = [
  '0.pool.ntp.org',
  '1.pool.ntp.org',
  '2.pool.ntp.org',
  '3.pool.ntp.org'
]
include_recipe 'ntp'
