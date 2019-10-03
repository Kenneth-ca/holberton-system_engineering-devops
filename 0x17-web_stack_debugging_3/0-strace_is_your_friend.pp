# Puppet automated fix for wordpress
exec { 'Debugging':
  path     => [ '/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:'],
  command  => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  provider => 'shell',
}
