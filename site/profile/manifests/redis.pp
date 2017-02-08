class profile::redis {
  # We'll require our epel class so that it is enforced first.
  # Don't forget to update that class before enforcing your code
  require profile::epel
  #contain is necesary for fix lab bug
  contain redis
  class { 'redis':
    # what parameter should we pass to set maxmemory to 10mb?
    maxmemory => '10mb'
  }
  
}
