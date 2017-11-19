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
  content 'Property of ...'
  action :create
  owner 'root'
  group 'root'
end
