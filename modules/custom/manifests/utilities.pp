class custom::utilities{
	
  package { [
      "make", 
      "g++",
      "markdown",
      "htop",
      "nmap",
      "wireshark",
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
