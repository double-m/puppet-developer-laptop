class custom::utilities{
	
  package { [
      "markdown",
      "nmap",
      "whois",
      "iceweasel",
      "youtube-dl",
      "default-jdk",
      "libreoffice",
      "smplayer"
    ]:
    ensure => "latest"
  }
}
