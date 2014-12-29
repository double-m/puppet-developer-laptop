# includes everything puppet-developer-laptop can provide
class all {
	
  include fish
  include git
  include terminator
  include conky
  include kupfer
  include java
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