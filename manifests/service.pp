class ssh::service (
  String $service_name   = $::ssh::service_name,
  String $service_ensure = $::ssh::service_ensure,
  Boolean $service_enable = $::ssh::service_enable,
) {  
  service { 'ssh-service': 
    name       => $service_name,
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
  }
}
