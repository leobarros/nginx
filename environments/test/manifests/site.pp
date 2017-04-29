$pacotes = ['vim', 'curl', 'lynx', 'ipython', 'git',
'tree', 'strace', 'wget']

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
