class supervisord::reload {

  $supervisorctl = '/usr/local/bin/supervisorctl'

  exec { "supervisorctl_reread":
    command     => "${supervisorctl} reread",
    refreshonly => true
  }
  exec { "supervisorctl_update":
    command     => "${supervisorctl} update",
    refreshonly => true
  }
}