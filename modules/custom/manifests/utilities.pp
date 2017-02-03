class custom::utilities{
	
  package { [
      "default-jdk",
      "dnsutils",
      "dstat",
      "g++",
      "hexer",
      "htop",
      "iceweasel",
      "keepassx",
      "libreoffice",
      "make",
      "markdown",
      "nmap",
      "ntpdate",
      "pandoc",
      "python-gpgme",
      "python-pip",
      "smplayer",
      "telnet",
      "tofrodos",
      "tree",
      "wireshark",
      "whois",
      "youtube-dl"
    ]:
    ensure => "latest"
  }
}
