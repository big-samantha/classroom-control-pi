class aliases (
    $admin = 'root',
) {

    $aliases_params = { admin => $admin }

    file { '/etc/aliases':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => epp('aliases/aliases.epp',$aliases_params)
    }
    exec { '/usr/bin/newaliases':
        refreshonly => true,
        subscribe   => File['/etc/aliases'],
    }
}
