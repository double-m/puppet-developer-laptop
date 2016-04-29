class custom::ansible {

  package { [ "ansible", "python-boto" ]:
    ensure => "latest"
  }
}
