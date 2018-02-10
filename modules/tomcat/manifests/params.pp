class tomcat::params {


  $user              =  'tomcat'
  $group             =  'tomcat'
  $config_path       =  '/etc/tomcat/tomcat.conf'
  $packages          =  ['tomcat', 'tomcat-webapps', 'lynx']
  $service_name      =  'tomcat'
  $service_state     =  running
  $java_home         =  "/usr/lib/jvm/jre"
  $catalina_base     =  "/usr/share/tomcat"
  $catalina_home     =  "/usr/share/tomcat"
  $catalina_tmpdir   =  "/var/cache/tomcat/temp"
  $catalina_pid      =  "/var/run/tomcat.pid"
  $jasper_home       =  "/usr/share/tomcat"
  $tomcat_cfg_loaded =  "1"
}