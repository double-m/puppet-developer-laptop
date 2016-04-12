class custom::virtualbox {
	
  exec { "add key to apt":
    command => "wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -",
    onlyif  => "test ! -f /etc/apt/sources.list.d/virtualbox.list"
  }
  ->
  exec { "add virtualbox source to apt":
    command => 'echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list',
    onlyif  => "test ! -f /etc/apt/sources.list.d/virtualbox.list"
  }
  ->
  exec { "apt update for virtualbox":
    command => "sudo apt-get update"
  }
  ->
  package { "virtualbox-5.0":
    ensure  => "latest"
  }
  ->
  exec { "virtualbox should be stopped":
    command => "systemctl stop virtualbox"
  }
  ->
  exec { "virtualbox should not start at boot":
    command => "systemctl disable virtualbox"
  }
}
