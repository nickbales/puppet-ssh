class ssh::install(
  String $package_name = $::ssh::package_name,
)  {
  package { 'ssh-package':
    name   => $package_name,
    ensure => latest,
  }

}
