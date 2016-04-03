class custom::nodejs {
	
  exec { "add node source to apt":
    command => "curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -",
    onlyif => "test ! -f /etc/apt/sources.list.d/nodesource.list"
  }
  ->
  package { "nodejs":
    ensure => "latest"
  }
  ->
  exec { "install packages globally via npm":
    command => "npm install -g bower grunt-cli"
  }
}
