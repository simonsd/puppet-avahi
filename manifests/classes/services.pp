class avahi::services {
	service {
		'avahi daemon':
			ensure => running,
			enable => true,
			name => 'avahi',
			require => Service['dbus daemon'];

		'dbus daemon':
			ensure => running,
			enable => true,
			name => 'dbus';
	}
}
