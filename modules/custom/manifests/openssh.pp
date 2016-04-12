class custom::openssh {
	
  package { "openssh-server":
    ensure => "latest"
  }
  ->
  exec { "openssh-server should be stopped":
    command => "systemctl stop ssh"
  }
  ->
  exec { "openssh-server should not start at boot":
    command => "systemctl disable ssh"
  }
}
