
class fish {
  include 'apt'

  apt::ppa { 'ppa:fish-shell/release-2': }
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