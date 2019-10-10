# Script that fix the limits for the request of nginx
exec { 'Debugging4':
  path     => [ '/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:'],
  command  => "echo 'ULIMIT="-n 4096"' > /etc/default/nginx",
  provider => 'shell',
}
