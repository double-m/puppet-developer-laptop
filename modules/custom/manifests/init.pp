class custom {

  Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }
  
  include custom::apt
  include custom::shell
  include custom::ansible
  include custom::composer
  include custom::composer_packages
  include custom::git
  include custom::graphic_tools
  include custom::latex
  include custom::apache
  include custom::mysql
  include custom::mongodb
  include custom::postgresql
  include custom::openssh
  include custom::php
  include custom::nodejs
  include custom::ssh_keygen
  include custom::symfony
  include custom::utilities
  include custom::vagrant
  include custom::vim_plugins
  include custom::virtualbox
  include custom::google_chrome
  include custom::wine
  include custom::awscli
}
