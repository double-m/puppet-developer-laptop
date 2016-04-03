class custom::composer {

  exec { "download composer":
    require => Class["custom::php"],
    command => "curl -sS https://getcomposer.org/installer | sudo php",
    onlyif  => "test ! -f /usr/local/bin/composer"
  }
  ->
  exec { "install composer":
    command => "sudo mv composer.phar /usr/local/bin/composer",
    onlyif  => "test ! -f /usr/local/bin/composer"
  }
}
