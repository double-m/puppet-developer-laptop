class custom::nodejs {
	
  exec { "node_setup":
    command => "apt-get update",
    onlyif => "curl -sL https://deb.nodesource.com/setup | sudo bash -",
    path => "/usr/bin"
  }
  -> # and then:
  package { 'nodejs':
    ensure => 'latest'
  }
}
