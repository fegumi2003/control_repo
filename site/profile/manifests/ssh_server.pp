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
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9FCQvceK+v8wyDTiRaLc/Xj7XrxqvHSkp2V1Oc92lNAu/rZk8QWse9mGjbenhMHmuDeolNMeKNhj7wNK4cO365DQpCPsOCcUIVgVoZi+eHlNIfLYY17DPdCiZnn71ZEgsKuA6p0oBl6hS8XeCZqlF6gIAWpgS+xFj5YYFxMYICl8q2wljS9Hr9hOxuEclUNYqMdtYr0I/86JmfY8nQYwzisgVPbED/aIipcnmRoOlqgHT5mqrl+YI61ZwUpzmH7xVAaO+Y6+1ZyLc9umweRe53V/CofSDxNoWbT1dT0mZ5rQwHQXKTXTpjCrniOKxE/uRJVaUI4sdFqG2JnjVBmsX',
  }
}
    
