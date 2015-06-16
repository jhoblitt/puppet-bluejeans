# == Class: bluejeans
#
class bluejeans(
  $manage_repo = $::bluejeans::params::manage_repo,
) inherits bluejeans::params {

  if $manage_repo {
    require bluejeans::repo
    Class[bluejeans::repo] -> Package[$::bluejeans::params::package_name]
  }

  package { $::bluejeans::params::package_name:
    ensure => present,
  }
}
