class mymodule::httpd {
  package { 'httpd':
  ensure => installed,
  }
  service { 'httpd':
       ensure => running,
       enable => true,
       required => Package["httpd"],
 }  
}

