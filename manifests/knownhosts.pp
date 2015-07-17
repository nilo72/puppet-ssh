class ssh::knownhosts {
  if( $::operatingsystem == 'Debian' and $::lsbmajdistrelease < 8 ){
    Sshkey <<| type != 'ssh-ed25519' or type != 'ed25519' |>>
  }
  else{
    Sshkey <<| |>>
  }
}
