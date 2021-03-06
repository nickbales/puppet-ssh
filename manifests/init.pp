# Class: ssh
# ===========================
#
# Full description of class ssh here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'ssh':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class ssh(
  String $package_name,
  String $package_ensure,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $permit_root_login = false,
) {
  class { '::ssh::install': }
  class { '::ssh::service': 
    require => Class['::ssh::install'],
  }
  class { '::ssh::config':
    require => Class['::ssh::install'],
    notify  => Class['::ssh::service'],
  }
}
