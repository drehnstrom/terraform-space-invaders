## To run:

Open Google Cloud Shell and clone this repository.

Open terraform.tfvars file and change project_id variable to your project ID. 
If you comment out that line you will be prompted for the Project ID.

## Then run: 
terraform init

terraform plan

terraform apply -auto-approve

## The followng will be created:
VPC

1 Subnet

Firewall rules for internal, SSH and HTTP

Web Server with Space Invaders demo

## To delete everything run:
terraform destroy -auto-approve

