class custom::php {

  package { [ "php5", "php5-curl", "phpunit" ]:
    ensure => "latest"
  }
}
