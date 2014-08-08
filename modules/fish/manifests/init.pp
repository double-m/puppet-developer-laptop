
class fish {
  include 'apt'

  apt::source { 'fish-shell-release-2': 
    location    => 'http://ppa.launchpad.net/fish-shell/release-2/ubuntu',
    release     => 'trusty',
    repos       => 'main',
    include_src => true,
    key         => '6DC33CA5',
    key_server  => 'keyserver.ubuntu.com'
  }
  ->
  package { 'fish' :
    ensure => 'installed'
  }
  ->
  file_line { 'fish alt dot':
    ensure => present,
    line => 'bind \e. history-token-search-backward',
    path => '/usr/share/fish/functions/fish_default_key_bindings.fish',    
  }
}