# Puppet developer laptop

Provisionment for developer work stations. Similar to [Boxen](https://boxen.github.com/) but focused on Linux rather than Mac OS X.

To execute, run the following command:

    wget -O - https://raw.githubusercontent.com/backuitist/puppet-developer-laptop/master/remote-install.sh | bash

wget and bash should be already installed on your system.

The script will prompt for customization. Customizations are provided in the form of a 'custom' puppet module.
So if you enter in the prompt `ssh://toto@my.server.com:~/puppet-laptop-custom` then within `puppet-laptop-custom` you should have

    [files]
      + some_file
      + some_other_file
    [manifests]
      + init.pp   # class custom { ... }
      + other.pp  # class custom::other { ... }
    [templates]
      + some_template.erb

For instance your `init.pp` could contain the following in order to setup git:
```puppet      
class custom {

  include all
    
  file { "${home}/.gitconfig":
    source  => "puppet:///modules/${module_name}/.gitconfig",
    require => Package['git'],
    owner => $real_id,
    group => $real_id
  }
}
```
