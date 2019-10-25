node default {
	files { 'fill motd':
		path => '/etc/motd',
		content => 'Hello World',
	}

node server0 {
	class { 'apache':
		port => '80',
		docroot => /var/www/vhost'
		ensure => installed,
		docroot_owner => 'www-data',
		docroot_group => 'www-data',
		
		
	}

}
