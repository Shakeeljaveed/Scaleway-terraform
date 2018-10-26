### INSTALL TERRAFORM USING THE OFFICIAL DOCUMENT

(https://www.terraform.io/intro/getting-started/install.html)

### Then create a variable.tf file

And enter the token that you have created in the scaleway account and mention the key path file 

### Get the details of your account via curl 

`curl://account.scaleway.com/organizations -H "X-Auth-Token: your security token"`

### Then create a server_creation.tf file

copy the code and follow the instructions

#### Terraform init will download the nescessary plugins for the provider

`terraform init`

#### Terraform validate will check the errors

`terraform validate`

#### Terraform fmt will format the file 

`terraform fmt`

#### Terraform plan is used to create an execution plan

`terraform plan`

#### Terraform plan -out The path to save the generated execution plan.

`terraform plan -out < any userdefined plan-name>`

#### The terraform apply command is used to apply the changes required to reach the desired state

`terraform apply < plan name >`

#### The terraform destroy command is used to destroy the Terraform-managed infrastructure

`terraform destroy < plan name >`


