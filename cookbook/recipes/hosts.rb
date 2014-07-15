#
# Cookbook Name:: cb-common
# Recipe:: hosts
#

# Configure /etc/hosts file
# Public ips directive can be 'hostname', 'fqdn', or 'localhost'
node.normal['hosts_file']['path'] = '/etc/hosts'
node.normal['hosts_file']['public_ips'] = 'hostname'
node.normal['hosts_file']['custom_entries'] = {}
node.normal['hosts_file']['public_ips'] = 'hostname'
node.normal['hosts_file']['localhost_aliases'] = []
node.normal['hosts_file']['include_ipv6'] = false
include_recipe 'hosts_file'
