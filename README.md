# ansible-bootstrap-role

An Ansible role I use to do some basic bootstrapping on a new server. I use it with other roles to prepare servers for kubernetes. Assumes CentOS and:

- sets the hostname of the server to the value of `server_name` (can't use `inventory_hostname` with dynamic inventories that return the IP)
- updates the system and reboots if needed
- installs some essential packages I need on my servers
- installs and enable an iSCSI initiator which is required by some Kubernetes storage solutions
- configures automatic security updates and email notifications to `notifications_email`when there are any updates available


