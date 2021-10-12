class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQWx76eS9n62SaOdZxj7wEaai+X91qViQ1BVOXTPuZpoRQGsuRWilJoa0aPoPoqa7Cub8adG4JjbHiguVgUH+xeEVvdSbCD+VEb1t/RS+4y2CUwvwyEHR/ZniunYmoOjThsEOOpXM07IVVtuxfd3ahimsPP+YZNC49zC4LUbyDTuw4GRTV7K6mp6S+TCv0VKgsnqtkQRj71lSC2PqT/g2/jrPGvQOcJprn4fRAT45d3J8X6m5nQsPb6z8XXrc1aR3xqGJA5E9FrzWRMjbMTT4+7GSiXWU8LY44/enBuSYGhhFJ9J2jfRFoFJ6143V5xq+GLXo+jHY231eWRndvh+zJ',
  }  
}
