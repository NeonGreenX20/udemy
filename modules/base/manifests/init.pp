class base inherits base::params {
  user { 'deploy':
    ensure     => present,
    managehome => true,
    home       => '/home/deploy',
    password   => '$1$mCgvpuvA$QYLaU.KQ9am3Xyb58wg8d/',
    uid        => 5001,
  }

  user { 'rege':
    ensure     => present,
    managehome => true,
    home       => '/home/rege',
    password   => '$1$mCgvpuvA$QYLaU.KQ9am3Xyb58wg8d/',
    uid        => 5002,
  }

  user { 'dojo':
    ensure => absent,
  }

  package { [ 'tree','git','ntp','wget','unzip']:
    ensure => present,
  }

  service {$::base::ntp_service:
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
  }

  file { '/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "Property of XYZ
    SYSTEM INFO:
    ==============
    IPADDRESS        : ${::ipaddress}
    HOSTNAME         : ${::hostname}
    MEMORY           : ${::memory['system']['total']}
    CPU CORES        : ${::processors['count']}
    OPERATING SYSTEM : ${::os['family']}
    
    ",
  }
}