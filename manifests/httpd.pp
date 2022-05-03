class mymodule::httpd {
  package { 'httpd':
  ensure => installed,
  }
  service { 'httpd':
       ensure => running,
       enable => true,
       required => Package["httpd"],
 }
 file {'/etc/httpd/conf.d/myserver.conf':
  notify => service['httpd],
  ensure => file,
  required => Package["httpd],
  content => template("mymodule/myserver.conf.erb"),
 }
 file {"/var/www/myserver":
   ensure => "directory",  
}
  
}

