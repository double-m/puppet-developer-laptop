class custom::apache {
	
  package { "apache2":
    ensure => "latest"
  }
  ->
  exec { "apache2 should be stopped":
    command => "systemctl stop apache2"
  }
  ->
  exec { "apache2 should not start at boot":
    command => "systemctl disable apache2"
  }
}
