class profile::agent_nodes {
	include dockeragent
	dockeragent::node {'centos7-web.localnet.com':}
	dockeragent::node {'centos7-db.localnet.com':}
}
