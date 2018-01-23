# Class: custom1
#
#
class custom1 (
  $root_password =  'SecretValue'
) {
  # resources
  notify {"hello world ${root_password}":}

  file { 'c:\users\kermit\secretfile.txt':
    ensure  => 'present',
    content => "${root_password}",
  }
}

class { 'custom1': }
