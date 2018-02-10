
class tomcat(
  $user              = $tomcat::params::user,
  $group             = $tomcat::params::group,
  $config_path       = $tomcat::params::config_path,
  $packages          = $tomcat::params::packages,
  $service_name      = $tomcat::params::service_name,
  $service_state     = $tomcat::params::service_state,
  $java_home         = $tomcat::params::java_home,
  $catalina_base     = $tomcat::params::catalina_base,
  $catalina_home     = $tomcat::params::catalina_home,
  $catalina_tmpdir   = $tomcat::params::catalina_tmpdir,
  $catalina_pid      = $tomcat::params::catalina_pid,
  $jasper_home       = $tomcat::params::jasper_home,
  $tomcat_cfg_loaded = $tomcat::params::tomcat_cfg_loaded
) inherits tomcat::params {
  include tomcat::config
  include tomcat::install
  include tomcat::service
  include java::install
}
