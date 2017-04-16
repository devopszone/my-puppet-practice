# Class: java
#
#
class openmrs::java_install{
    # resources
      java::oracle { 'jdk8' :
      ensure  => 'present',
      version => '8',
      java_se => 'jdk',
   }
}