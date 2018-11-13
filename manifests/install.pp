class ssh::install(
  String $package_name   = $::ssh::package_name,
  String $package_ensure = $::ssh::package_ensure,
)  {
  package { 'ssh-package':
    name   => $package_name,
    ensure => $package_ensure,
  }

}
