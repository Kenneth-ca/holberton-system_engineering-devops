#Client configuration file with Puppet
file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'no_pass':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => '^PasswordAuthentication.*',
}

file_line { 'identify':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => 'IdentifyFile ~/.ssh/holberton',
  match => '^IdentifyFile.*',
}
