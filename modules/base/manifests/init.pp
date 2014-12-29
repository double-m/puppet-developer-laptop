class base {
  
  file { "${home}/bin" :
    ensure => 'directory',
    owner  => $real_id,
    group  => $real_id,
  }
}