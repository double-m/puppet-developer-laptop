class scala {
  
  # provide the bin directory
  include base

  File {
    owner  => $real_id,
    group  => $real_id
  }

  # for now we'll only install a single version of scala
  wget::fetch { 'http://downloads.typesafe.com/scala/2.11.4/scala-2.11.4.tgz':
    destination => "/tmp/scala-2.11.4.tgz",    
  }
  ->
  exec { "/bin/tar -xzf /tmp/scala-2.11.4.tgz ${home}/bin/":
    unless => "/bin/ls ${home}/bin/scala-2.11.4",
    user  => $real_id,
    group  => $real_id
  }
  ->
  file { "${home}/bin/scala-current":
    ensure => 'link',
    target => "${home}/bin/scala-2.11.4"
  }
  ->
  file { "${home}/bin/scala":
    ensure => 'link',
    target => "${home}/bin/scala-current/bin/scala"
  }
  ->
  file { "${home}/bin/scalac":
    ensure => 'link',
    target => "${home}/bin/scala-current/bin/scalac"
  }
  ->
  file { "${home}/bin/scaladoc":
    ensure => 'link',
    target => "${home}/bin/scala-current/bin/scaladoc"
  }
}