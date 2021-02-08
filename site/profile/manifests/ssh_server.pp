class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@centos7-1.localnet.com':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqXncUEwhUEcUZfYKOkhf1llnF2jioNT4Bc3kJqYPQh82dlbQOLdW3xb/3jtKUemTHIkxTPyMuRpg+VAzYePMo/5vPZK9HA6uK/5uTtH/6lJke/ULCQg0j0N0oInOxsweryYegf68SQlF2nC+TaPFjqZXf+Y4AKIFuJRYkK6tLWWgmXsVU3K0U2mYtuzEAHxkz2522qj6Xan1F+BzXtnZGXOg1WMNGNFYOsX3nIguVMjLhdhNNxxDNMwiaKMYctJ9VpM9EAQ6cRxfGWlyb8h1W61ZS/hTt1VhcrGSKmIhjZIuk7i/XvVQ8nCpTCJzTAt9OSZ5sRb5H8Xj+mpFSCMxn',
	}  
}
