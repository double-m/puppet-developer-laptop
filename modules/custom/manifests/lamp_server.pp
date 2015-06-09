class custom::lamp_server {
	
  package { 'apache2':
    ensure => 'latest'
  }
  ->
  exec { "apache2 should be stopped":
    command => "/etc/init.d/apache2 stop"
  }
  ->
  exec { "apache2 should not start at boot":
    command => "/usr/sbin/update-rc.d -f apache2 remove"
  }

  package { 'mysql-server':
    ensure => 'latest'
  }
  ->
  exec { "mysql should be stopped":
    command => "/etc/init.d/mysql stop"
  }
  ->
  exec { "mysql should not start at boot":
    command => "/usr/sbin/update-rc.d -f mysql remove"
  }

  package { 'php5':
    ensure => 'latest'
  }
}
