node default {
	file { 'fill motd':
		path => '/etc/motd',
		content => 'Hello World',
	}
	package { 'tmux':
		ensure => installed, 
		}
}

## server0

node server0 {
# installation apache
	package { 'apache2':
		ensure => installed,	
		
	}
# installation apache

	package { 'php7.3':
		ensure => installed,
	}
# telechargement dokuwiki


	class fetch_file {
		include :: wget
		wget::fetch { 'https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz':
			destination =>'/usr/src/dokuwiki', 
			verbose => true
		}

	}	
}
