# manifests/selinux.pp
# manage selinux specific stuff

class apache::selinux {
    case $operatingsystem {
        gentoo: { include apache::selinux::gentoo }
        default: { include apache::selinux::base }
    }
}

class apache::selinux::base {}

class apache::selinux::gentoo inherits apache::selinux::base {
    package{'selinux-apache':
        ensure => present,
        category => 'sec-policy',
    }
    selinux::loadmodule {"apache": }
}