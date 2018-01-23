# Class: custom1
#
#
class custom1 (
  $root_password =  'SecretValue'
) {
  # resources
  notice $root_password
}

class { 'custom1': }
