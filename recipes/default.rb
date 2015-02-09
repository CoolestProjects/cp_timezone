
package "ntp"

template "/etc/sysconfig/clock" do
  source "clock.erb"
  owner "root"
end

bash "setting timezone" do
user "root"
group "root"
code <<-EOH
	yum -y install ntp
  	service ntpd stop
	ntpdate ie.pool.ntp.org

	mv /etc/localtime /etc/localtime.bak
  	ln -sf /usr/share/zoneinfo/#{node["cp_timezone"]["region"]} /etc/localtime

	service ntpd start 
EOH
end