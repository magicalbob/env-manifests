node default {
  exec { 'puppetlabs-ntp':
    command => "/opt/puppetlabs/bin/puppet module install puppetlabs-ntp",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep puppetlabs-ntp"
  }

  exec { 'puppet-yum':
    command => "/opt/puppetlabs/bin/puppet module install puppet-yum",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep puppet-yum"
  }

  exec { 'puppetlabs-firewall':
    command => "/opt/puppetlabs/bin/puppet module install puppetlabs-firewall",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep puppetlabs-firewall"
  }

  exec { 'saz-sudo':
    command => "/opt/puppetlabs/bin/puppet module install saz-sudo",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep saz-sudo"
  }

  exec { 'puppet-network':
    command => "/opt/puppetlabs/bin/puppet module install puppet-network",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep puppet-network"
  }

  exec { 'puppetlabs-vcsrepo':
    command => "/opt/puppetlabs/bin/puppet module install puppetlabs-vcsrepo",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep puppetlabs-vcsrepo"
  }

  exec { 'rtyler-jenkins':
    command => "/opt/puppetlabs/bin/puppet module install rtyler/jenkins",
    unless  => "/opt/puppetlabs/bin/puppet module list | /usr/bin/grep rtyler/jenkins"
  }
}
