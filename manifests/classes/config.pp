class avahi::config {
	file {
		'avahi-daemon.conf':
			ensure => present,
			path => '/etc/avahi/avahi-daemon.conf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('avahi/daemon.conf.erb');

/*
		'avahi-autoipd.action':
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => template('avahi/autoipd.action.erb');

		'avahi-dnsconfd.action':
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => template('avahi/dnsconfd.action.erb');

		'avahi hosts':
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => template('avahi/hosts.erb');
*/
	}
}
