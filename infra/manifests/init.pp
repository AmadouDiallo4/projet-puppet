node default {
	files { 'fill motd':
		path => '/etc/motd',
		content => 'Hello World',
	}

node server0 {
	package { 'apache2':
		ensure => installed,
		default => 'apache2',
	}

}
