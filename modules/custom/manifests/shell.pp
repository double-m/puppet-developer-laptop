class custom::shell {

  file_line { 'set_system_bell_off':
    path  => '/etc/inputrc',
    line  => 'set bell-style none',
    match => '# set bell-style none',
  }

}
