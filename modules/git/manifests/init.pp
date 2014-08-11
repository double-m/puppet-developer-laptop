class git {
  
  package { ['git', 'git-gui']: 
    ensure => 'installed'
  }

  File {
    owner => $real_id,
    group => $real_id
  }
  
  file { "${home}/.gitconfig":
    source  => "puppet:///modules/${module_name}/gitconfig",
    require => Package['git']
  }
}