# provide basic packages
class base::packages {
  package { ['htop', 'vim', 'meld', 'curl', 'ack-grep'] : 
    ensure => installed,
  }
}