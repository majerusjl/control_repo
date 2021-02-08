class profile::agent_nodes {
	include dockeragent
	dockeragent::node {'centos7-web.localnet.com':}
	dockeragent::node {'centos7-db.localnet.com':}
	host {'centos7-web.localnet.com':
		ensure => present,
		ip     => '172.18.0.2',
	}
	host {'centos7-db.localnet.com':
		ensure => present,
		ip     => '172.18.0.3',
	}
	
}
