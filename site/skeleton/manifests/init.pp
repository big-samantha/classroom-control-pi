class skeleton {
  #file { '/etc/skel':
  file { '/tmp/rrod157':
#    ensure => ???,   # what value should go here?
    ensure => /tmp/rrod157/.bashrc
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  
  # add a resource to manage /etc/skel/.bashrc


}
