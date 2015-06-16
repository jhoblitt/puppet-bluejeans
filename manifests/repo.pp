# == Class: bluejeans::repo
#
# This class is considered private.
#
class bluejeans::repo {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  rpmkey { '5FF054BD':
    ensure => present,
    source => 'https://swdl.bluejeans.com/repos/bluejeans/bjn-key',
  } ->
  yumrepo { 'bluejeans':
    ensure   => 'present',
    baseurl  => 'https://swdl.bluejeans.com/repos/bluejeans/x86_64/release/rpm',
    descr    => 'Blue Jeans Network, Inc. - x86_64 software and updates',
    enabled  => '1',
    gpgcheck => '1',
    gpgkey   => 'https://swdl.bluejeans.com/repos/bluejeans/bjn-key',
  }
}
