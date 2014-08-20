
include 'fish'
include 'git'
include 'terminator'
include 'conky'

package { ['htop', 'vim'] : 
  ensure => installed,
}
