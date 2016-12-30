# Parameters
class hx_ssh::params {
    $allow_users = undef
    $kex_algorithms = ['curve25519-sha256@libssh.org', 'diffie-hellman-group-exchange-sha256']
    $ciphers = ['chacha20-poly1305@openssh.com', 'aes256-gcm@openssh.com', 'aes128-gcm@openssh.com', 'aes256-ctr', 'aes192-ctr', 'aes128-ctr']
    $macs = ['hmac-sha2-512-etm@openssh.com', 'hmac-sha2-256-etm@openssh.com', 'hmac-ripemd160-etm@openssh.com', 'umac-128-etm@openssh.com', 'hmac-sha2-512', 'hmac-sha2-256', 'hmac-ripemd160', 'umac-128@openssh.com']
}