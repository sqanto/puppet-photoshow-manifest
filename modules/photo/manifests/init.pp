class photo{
        service { apache2:
                ensure       => running,
                restart      => true,
             
        }
        file { "/var/www/":
                path    => "/var/www/",
                owner   => "www-data",
                group   => "www-data",
                mode    => 644,
                recurse => true,
                source  => "puppet:///modules/photo/files/",
                ensure  => [directory, present],
        }
}