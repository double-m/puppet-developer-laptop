class custom::lamp_server {

  package { ["php5", "php5-curl", "phpunit"]:
    ensure => "latest"
  }
}
