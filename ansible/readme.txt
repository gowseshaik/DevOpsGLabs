Things to know before working with ansible
	
	1) ansible is agentless ( means, we do not need to run any agent on remote servers for communication )
	
	2) ansible follows push model ( means we push the configuration from ansible controller to remote servers )
	
	3) ansible uses SSH protocol to communicate with remote servers
	
	4) ansible uses below methods for remote servers authentication
	
			password based
			key based

Ansible controller ( is the machine/host/server where we install ansible ) 

	/etc/ansible default directory ( we have two important file in it )
	
		hosts ( default inventory file in which we can mention remote servers we want to apply/push the changes to)
		
		ansible.cfg  ( default ansible configuraton - can be used to customize as per our need )


Ansible Terminlogy 

	1) ansible ad-hoc commands ( single task that can be executed against remote servers )
	
	2) ansible playbooks  ( set of instructions written in a .yml file to execute against remote servers  )
	
	3) ansible facts ( information about remote servers collected ansible before running any task )
	
	4) ansible modules ( are the units of work that ansible ships to remote servers for executing the tasks )
	
	5) ansible role ( to break a playbook into multiple files. This simplifies writing complex playbooks, and it makes them easier to reuse )
	
		look at: https://docs.ansible.com/ansible/latest/reference_appendices/glossary.html     for more terms used in ansible. 
	
Ansible , chef & puppet will not be used as configuration containers will not be managed by containers because containers are immutable.
immutable (containers will come and go) its not as Virtual servers.
image size will increase, if you use chef and puppet. so will not use configuration tools for any containers.

Any configurtiion tool will be used on VMs only not for containers.

Ansible(controller) - Push Architechute
Chef & Puppet(master/server -clinet) -- Pull Architechture

id_rsa - key
id_rsa.pub - lock
ssh-copy-id user@clinetMachine
go to user@clientMachine

this ssh key will be copied in .ssh/authorised_keys

Ansible will run on Python

refer : https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html


