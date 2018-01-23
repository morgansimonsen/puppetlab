# Class: custom1
#
#
class custom1 (
  $root_password =  'SecretValue'
) {
  # resources
  notify {"hello world ${root_password}":}
}

class { 'custom1': }
