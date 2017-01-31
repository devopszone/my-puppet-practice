class appserv_tomcat::install (
    $package_name = $appserv_tomcat::params::package_name,
    $install_message = $appserv_tomcat::params::install_message
    ) inherits appserv_tomcat::params {
    package { $package_name:
        ensure => installed,
    }

    notify { $install_message: } 
    
}