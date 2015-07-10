class ssh::knownhosts {
  if( $::operatingsystem == 'Debian' and $::lsbmajdistrelease < 8 ){
    Sshkey <<| type != 'ed25519' |>>
  }
  else{
    Sshkey <<| |>>
  }
}
