#r10k profile
class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/marcel1984/control_repo_essentials',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
