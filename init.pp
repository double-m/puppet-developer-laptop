
include 'fish'

package { ['htop',
           'terminator',
           'git'] : 
  ensure => installed,
}