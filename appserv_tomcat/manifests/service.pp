class appserv_tomcat::service ($service_name = 'httpd' {
    
# This resource enables the tomcat service

     service { $service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $package_name,
    }
    $service_message=hiera('appserv_tomcat::service_message')
notify{$service_message:}
}