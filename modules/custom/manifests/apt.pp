class custom::apt {
	
  package { [
      "debian-keyring" 
    ]:
    ensure => "latest"
  }
}
