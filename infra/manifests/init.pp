node default {
	file { 'fill motd':
		path => '/etc/motd',
		content => 'Hello World',
	}
	package { 'tmux':
		ensure => installed, 
		}
}
node server0 {
	package { 'apache2':
		ensure => installed,	
		
	}
	package { 'php7-3':
		ensure => installed,
	}

}
