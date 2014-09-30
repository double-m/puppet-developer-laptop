
include 'fish'
include 'git'
include 'terminator'
include 'conky'

package { ['htop', 'vim'] : 
  ensure => installed,
}

# /tmp is generally not mounted on tmpfs and will incur IO overhead for tmp operations.
# Most laptop computers have enough memory to benefit from this
mount { '/tmp' :
  ensure      => 'mounted',
  atboot      => true,
  fstype      => 'tmpfs',
  options     => 'defaults,noatime,size=10%,mode=1777'
}