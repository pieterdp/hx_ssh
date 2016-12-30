##
# Configure the SSH server with some strict default settings
class hx_ssh (
    Array $allow_users = $hx_ssh::params::allow_users,
    Array $kex_algorithms = $hx_ssh::params::kex_algorithms,
    Array $ciphers = $hx_ssh::params::ciphers,
    Array $macs = $hx_ssh::params::macs
) inherits hx_ssh::params {

    include hx_ssh::config

}