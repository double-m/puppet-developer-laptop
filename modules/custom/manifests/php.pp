class custom::php {

  package { [ "php5", "php5-mysql", "php5-curl", "phpunit", "php5-xdebug" ]:
    ensure => "latest"
  }
  ->
  exec { "update pear channels":
    command => "pear update-channels"
  }
  ->
  exec { "pear install PHP_CodeSniffer":
    command => "pear install -s PHP_CodeSniffer || echo PHP_CodeSniffer not installed"
  }

}
