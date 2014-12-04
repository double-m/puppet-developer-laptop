class git {
  
  package { ['git', 'git-gui', 'gitk']: 
    ensure => 'installed'
  }

  File {
    owner => $real_id,
    group => $real_id
  }
  
  if str2bool($::install_gitconfig) {
    file { "${home}/.gitconfig":
      source  => "puppet:///modules/${module_name}/gitconfig",
      require => Package['git']
    }
  }
}
