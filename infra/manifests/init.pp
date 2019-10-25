node default {
	files { 'fill motd':
		path => '/etc/motd',
		content => 'Hello World',
	}
	package { 'tmux':
		ensure => installed, 
		}

node server0 {
	package { 'apache':
		ensure => installed,	
		
	}

}
