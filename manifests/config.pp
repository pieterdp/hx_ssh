# Configuration class
class hx_ssh::config inherits hx_ssh {

    # Configure the server
    class {'ssh::server':
        storeconfigs_enabled => false,
        options              => {
            'AllowUsers'                      => $hx_ssh::allow_users,
            'KexAlgorithms'                   => $hx_ssh::kex_algorithms,
            'Ciphers'                         => $hx_ssh::ciphers,
            'MACs'                            => $hx_ssh::macs,
            'Port'                            => 22,
            'UsePrivilegeSeparation'          => 'yes',
            'SyslogFacility'                  => 'AUTH',
            'LogLevel'                        => 'INFO',
            'PrintLastLog'                    => 'yes',
            'X11Forwarding'                   => 'no',
            'TCPKeepAlive'                    => 'yes',
            'StrictModes'                     => 'yes',
            'IgnoreRhosts'                    => 'yes',
            'Protocol'                        => 2,
            'HostKey'                         => ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ed25519_key'],
            'KeyRegenerationInterval'         => 3600,
            'ServerKeyBits'                   => 2048,
            'LoginGraceTime'                  => 60,
            'PermitRootLogin'                 => 'no',
            'PermitEmptyPasswords'            => 'no',
            'PasswordAuthentication'          => 'no',
            'ChallengeResponseAuthentication' => 'no',
            'RSAAuthentication'               => 'no',
            'PubkeyAuthentication'            => 'yes'
        }
    }
}