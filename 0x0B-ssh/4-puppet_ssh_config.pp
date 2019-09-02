#Client configuration file with Puppet
file { '/etc/ssh/ssh_config':
  ensure => present,
}->
file_line { 'no password':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => '^PasswordAuthentication.*',
}->
file_line { 'identify':
  ensure => present,
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/holberton',
  match => '^IdentityFile.*',
}
