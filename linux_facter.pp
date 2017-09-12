node default {
  file_line { 'set_facterlib':
    path  => '/etc/profile.d/puppet-agent.sh',
    line  => 'export FACTERLIB=/opt/puppetlabs/facter/facts.d/',
    match => '^export FACTERLIB='
  }

  file { 'user_home':
    ensure   => present,
    path     => '/opt/puppetlabs/facter/facts.d/user_home.rb',
    content  => [
                 'Facter.add(:user_home) do',
                 '  passwd = File.readlines("/etc/passwd")',
                 '  setcode do',
                 '    user_hash={}',
                 '    passwd.each do | user |',
                 '      user_name = user.split(":")[0]',
                 '      user_home = user.split(":")[5]',
                 '      if user_name and user_home',
                 '        user_hash[user_name]=user_home',
                 '      end',
                 '    end',
                 '    user_hash',
                 '  end',
                 'end'
    ].join("\n")
  }
}
