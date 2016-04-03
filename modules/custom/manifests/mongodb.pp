class custom::mongodb {
	
  exec { "add mongodb key to apt":
    command => "sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927",
    onlyif  => "test ! -f /etc/apt/sources.list.d/mongodb-org-3.2.list"
  }
  ->
  exec { "add mongodb source to apt":
    command => 'echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list',
    onlyif  => "test ! -f /etc/apt/sources.list.d/mongodb-org-3.2.list"
  }
  ->
  exec { "apt update for mongodb":
    command => "sudo apt-get update"
  }
  ->
  package { "mongodb-org":
    ensure  => "latest"
  }
  ->
  exec { "mongodb should be stopped":
    command => "systemctl stop mongod"
  }
  ->
  exec { "mongodb should not start at boot":
    command => "systemctl disable mongod"
  }
}
