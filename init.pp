
include 'fish'
include 'git'

package { ['htop',
           'terminator'] : 
  ensure => installed,
}