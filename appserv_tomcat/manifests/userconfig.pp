class appserver_tomcat::userconfig ($tomcat_users_location= '') {
    # resources
    $tomcat_username ='admin'
    $tomcat_password = 'password'
    $tomcat_roles ='manager-gui,admin-gui'

    file{ $tomcat_users_location :
        ensure => present,
        content => template('appserver_tomcat/tomcat-users.xml.epp') 

    }

}