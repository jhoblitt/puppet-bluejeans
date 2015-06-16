# == Class: bluejeans::repo
#
# This class is considered private.
#
class bluejeans::repo {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  rpmkey { '7FAC5991':
    ensure => present,
    source => 'https://dl.google.com/linux/linux_signing_key.pub',
  } ->

  yumrepo { 'google-talkplugin':
    ensure   => 'present',
    baseurl  => 'http://dl.google.com/linux/talkplugin/rpm/stable/x86_64',
    descr    => 'google-talkplugin',
    enabled  => '1',
    gpgcheck => '1',
  }
}
