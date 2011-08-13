class avahi::packages {
	package {
/*
		'avahi':
			ensure => present;
*/

		'dbus-core':
			ensure => present;

		'expat':
			ensure => present;

		'libdaemon':
			ensure => present;

		'glib2':
			ensure => present;

		'libcap':
			ensure => present;

		'gdbm':
			ensure => present;
	}

	exec {
		'avahi':
			command => 'pacman -Sdd avahi --noconfirm',
			provider => shell,
			path => '/bin:/sbin:/usr/bin:/usr/sbin',
			unless => 'pacman -Q avahi';
	}
}
