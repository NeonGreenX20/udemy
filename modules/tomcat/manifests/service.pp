class tomcat::service inherits tomcat{
  service{ $::tomcat::service_name :
    ensure     => $::tomcat::service_state,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
  }
}