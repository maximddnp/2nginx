## Terraform + Ansible playbook: setup two nginx in docker

####Prerequisites:
Install terraform
Install ansible

Generate ssh key "ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f $(pwd)/aws_key" 
and pass generated public key to variables.tf public_key variable.  
Pass as env vars AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY before running terraform and ansible scripts

Commands for creating ec2 instances with terraform:
```terraform init```
```terraform apply```

Pass public_dns_nginx1 var into "server-back1 ansible_host=" variable in inventory file
Pass public_dns_nginx2 var into "server-back2 ansible_host=" variable in inventory file

Commands for installing docker and nginx with ansible:
```ansible-galaxy install -r requirements.yml```
```ansible-playbook install_nginx.yml -i inventory```

