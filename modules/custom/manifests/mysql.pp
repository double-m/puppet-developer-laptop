class custom::mysql {
	
  package { "mysql-server":
    ensure => "latest"
  }
  ->
  exec { "mysql should be stopped":
    command => "systemctl stop mysql"
  }
  ->
  exec { "mysql should not start at boot":
    command => "systemctl disable mysql"
  }
}
