# Provision AWS EC2 JFROG Artifactory Platform using Terraform

## Personal Learning ##

The Mini project is about to provision an instance from aws ec2 installed with ubuntu with artifactory platform to be used for personal learning.

- Can adminester JFROG Platform
- Configure and add Artifacts. 

### Repo Includes ###

- [x] 01-06         : Terraform files that congures the Infrastucture-as-a-Code
- [x] Shell Script  : jfrog.sh file that configures the installation of the update and upgrade ec2 instance to its latest version, Jfrog Artifactory Platform and its services. Then curling in the cli to test the success installation.

> curl localhost:8081

- [x] Added sample private key directory with `myec2vm.pem` key

### Steps ##
Terraform manual commands and can be used in a Pipeline CI/CD Automation

> terraform init

> terraform validate

> terraform plan

> terraform apply -auto-approve

> terraform destroy -auto-approve


> [!IMPORTANT]
> The README.md :shipit: 

### References ###
[AWS Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest)

Enjoy! :+1: :+1: :+1: