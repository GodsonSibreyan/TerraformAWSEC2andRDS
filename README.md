 ### What is this repository for? ###
This repo will launch EC2 and RDS instance using variables from interactive shell

### Prerequistes ###
1. AWS IAM Account with permissions to the following policies.
  a. AmazonEC2FullAccess
  b. AmazonRDSFullAccess
2. Latest Terraform CLI to run Terraform commands.
3. A base instance to install and run Terraform commands.

### Commands to download and install Terraform ###
```console
 cd /usr/local/src
 wget https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip
 unzip terraform_0.12.5_linux_amd64.zip
 mv terraform /usr/local/bin/
 ln -s /usr/local/src/terraform /usr/bin/terraform
 ```

### Download the files from this repository ###

* Git clone the files from this repository using the following commands.
```console
git clone https://github.com/siru88/TerraformEC2andRDS.git
```
* Navigate to the cloned directory and the terrform script using.
```console
cd TerraformEC2andRDS/tera_var_default
```

### Run Terraform script ###

* To initialise the terraform script.
```console
/usr/bin/terraform init
```
* To verify the terraform templates before execution.
```console
terraform plan
```
* To apply the terraform template
```console
terraform apply 
```

### Variables to enter on prompt ###

Keep these values handy on a notepad to enter the values when the terraform script prompts. 
[Note: the values below are not in proper order the prompt may ask for values randomly].
* AWS region
* AWS access_key
* AWS secret_key
* AWS image_id
* RDS db_name
* RDS db_username
* RDS db_password
* AWS availability_zone
* AWS instance_type
* RDS instance_identifier_name
* RDS cluster_identifier_name
