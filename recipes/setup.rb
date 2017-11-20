package 'tree' do
  action :install
end
package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "Property of ...
  IPADDRESS: #{node['ipaddress']}
  HOSTNAME : #{node['hostname']}
  MEMORY   : #{node['memory']['total']}
  CPU      : #{node['cpu']['0']['mhz']}
  "
  mode '0644'
  action :create
  owner 'root'
  group 'root'
end
