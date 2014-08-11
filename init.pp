
include 'fish'
include 'git'
include 'terminator'

package { ['htop'] : 
  ensure => installed,
}