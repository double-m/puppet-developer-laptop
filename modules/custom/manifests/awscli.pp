class custom::awscli {

  exec { "awscli installer":
    command => "sudo pip install --upgrade awscli",
    path    => [ "/usr/bin", "/bin" ]
  }
}
