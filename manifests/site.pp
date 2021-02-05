node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a majerus README',
    owner   => 'root',
  }
  user {'testpup':
    ensure  => present,
    group   => ['wheel'],
  }
}
