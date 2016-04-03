class custom::postgresql {
	
  package { "postgresql":
    ensure => "latest"
  }
  ->
  exec { "postgresql should be stopped":
    command => "systemctl stop postgresql"
  }
  ->
  exec { "postrgresql should not start at boot":
    command => "systemctl disable postgresql"
  }
}
