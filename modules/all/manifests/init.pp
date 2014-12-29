# includes everything puppet-developer-laptop can provide
class all {
	
  include base
  include conky
  include fish
  include git
  include java
  include kupfer
  include scala
  include terminator
  include vagrant

  package { ['htop', 'vim', 'meld', 'curl'] : 
    ensure => installed,
  }

  # /tmp is generally not mounted on tmpfs and will incur IO overhead for tmp operations (damaging your SSD if you have one).
  # Most laptop computers have enough memory to benefit from this
  mount { '/tmp' :
    ensure      => 'mounted',
    atboot      => true,
    device      => 'tmpfs',
    fstype      => 'tmpfs',
    options     => 'defaults,noatime,size=10%,mode=1777'
  }
}