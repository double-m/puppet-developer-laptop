class custom {

  include all

  file { "${home}/.gitconfig":
    source  => "puppet:///modules/${module_name}/.gitconfig",
    require => Package['git'],
    owner => $real_id,
    group => $real_id
  }

  fish::add_config { 'fish-config': }
}