class custom::symfony {

  exec { "symfony installer":
    command => "curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony && \
               chmod a+x /usr/local/bin/symfony",
    path    => [ "/usr/bin", "/bin" ]
  }

  exec { "install composer":
    command => "curl -sS https://getcomposer.org/installer | php && \
               sh -c 'mv composer.phar /usr/local/bin/composer'",
    path    => [ "/usr/bin", "/bin" ]
  }
  #->
  #exec { "install php_codesniffer via composer":
  #  command => "composer global require \"squizlabs/php_codesniffer=*\"",
  #  path    => [ "/usr/bin", "/usr/local/bin" ]
  #}
}
