class appserv_tomcat::install ($package_name='httpd'{
     
    package { $package_name:
        ensure => installed,
    }

    notify { $install_message: } 
    
}