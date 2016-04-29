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
      "smplayer",
      "dnsutils",
      "tofrodos",
      "tree",
      "hexer",
      "python-pip",
      "ntpdate"
    ]:
    ensure => "latest"
  }
}
