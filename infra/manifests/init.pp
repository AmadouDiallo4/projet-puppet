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
	package { 'apache':
		ensure => installed,	
		
	}

}
