class custom::google_chrome {
	
  exec { "add google chrome repo key to apt":
    command => "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -",
    onlyif => "test ! -f /etc/apt/sources.list.d/google-chrome.list"
  }
  ->
  exec { "add google chrome source to apt":
    command => "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list",
    onlyif => "test ! -f /etc/apt/sources.list.d/google-chrome.list"
  }
  ->
  exec { "apt-get update for google chrome":
    command => "sudo apt-get update"
  }
  ->
  package { "google-chrome-stable":
    ensure => "latest"
  }
}

