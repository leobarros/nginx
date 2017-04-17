$pacotes = ['vim', 'curl', 'lynx', 'ipython', 'git',
'tree', 'strace', 'wget', 'epel-release']

  package{ $pacotes:
    ensure => installed,
  }

  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  } 
