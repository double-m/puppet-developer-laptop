
include 'fish'
include 'git'
include 'terminator'

package { ['htop', 'vim'] : 
  ensure => installed,
}
