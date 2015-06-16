# == Class: bluejeans::params
#
# This class is considered private.
#
class bluejeans::params {

  case $::osfamily {
    'RedHat': {
      $manage_repo  = true
      $package_name = 'google-talkplugin'
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
