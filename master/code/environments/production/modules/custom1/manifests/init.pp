# Class: custom1
#
#
class custom1 (
  $root_password =  'SecretValue'
) {
  notify {"hello world ${root_password}":}

  case $::kernel {
    'Linux': {
      file { '/tmp/secretfile.txt':
      ensure  => 'present',
      content => "${root_password}",
      }
    }

    'windows': {
      file { 'c:\users\kermit\secretfile.txt':
      ensure  => 'present',
      content => "${root_password}",
      }
    }
    default: {
      # ...
    }
  }
}

class { 'custom1': }
