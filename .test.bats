setup() {
  source /var/batslib/batslib.bash
}

add_remote() {
  grep "remote.*origin" */.git/config
}

@test "Check for the remote" {
  run add_remote
  [ "$status" -eq 0 ]
}