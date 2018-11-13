class ssh::config (
  String $ensure = file,
  Boolean $permit_root_login = $::ssh::permit_root_login,
) {
  
  file { '/etc/ssh/sshd_config':
    ensure  => $ensure,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('ssh/sshd_config.erb'),
  }
}
