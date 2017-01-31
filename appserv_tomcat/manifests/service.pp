class appserv_tomcat::service (
    $service_name = $appserv_tomcat::params::package_name,
    $service_message = $appserv_tomcat::params::service_message
    ) inherits appserv_tomcat::params {
    

# This resource enables the tomcat service

     service { $service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $package_name,
    }
}