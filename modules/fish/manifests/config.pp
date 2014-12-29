class fish::config {

  $target = "${home}/.config/fish/config.fish"

  concat { $target:
    ensure => present,
    owner => $real_id,
    group => $real_id
  }  
  fish::add_config { 'default':
    source => "puppet:///modules/${module_name}/config.fish",
    order  => '01'
  }
}

# either content or source must be defined (and not both of course!)
define fish::add_config($content = undef, $source = undef, $order = '02') {  
  concat::fragment { 'tmpfile':
    target  => $fish::config::target,
    content => $content,
    source  => $source,
    order   => $order
  }
}