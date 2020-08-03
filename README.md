# terraform_rundeck
Terraform resources for Rundeck projects automations.

## Requirements
Vagrant, VirtualBox, Terraform and Ansible are needed for this project.

## Init
Firstly we will create an instance to install Rundeck on it
```
$ vagrant up
```
Once finished, we need to connect to http://localhost:4444 and log in with admin/admin.
Then, we need to create a token in order to use Terraform automation in rundeck_project folder. We go to Profile -> User API tokens -> + Generate New Token -> Show Token and copy the token to the variables.tf file in the auth_token variable.

Now, we can run the Terraform automation to create a project:
```
$ terraform init
$ terreform plan
$ terraform apply -auto-approve
```
