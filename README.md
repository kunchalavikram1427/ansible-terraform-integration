# Terraform Ansible Integration

## Installing tools

### Installing Terraform
```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```
### Installing Ansible
```
pip3 install ansible
```
```
$ sudo su
# whereis ansible
ansible: /usr/local/bin/ansible
```
Updating path
```
echo "export PATH=$PATH:/usr/local/bin/" >> ~/.bashrc
source ~/.bashrc
```
```
# ansible --version
# ansible-playbook --version
```
### Installing Git
```
yum install git -y
```

## Configure AWS CLI
### Create IAM user and add credentials
```
aws configure
```