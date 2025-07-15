Terraform - VPC + EKS-Cluster for Vprofile java app project with Git-Actions CICD:  

This project builds a complete AWS infrastructure using Terraform, including: 
- Custom VPC, subnets (public/private), NAT gateway, Internet Gateway.  
- EKS cluster with node-group, IAM roles, s3, security groups.  
- Creating Helm charts for workload deployments on EKS.  
- Automated CICD with Git-Actions.    
  
Git Repository for Code:
For AWS infrastructure:
https://github.com/Giladk6/iaac-vprofile.git
For Java web app CICD
https://github.com/Giladk6/vprofile-actions.git
  
🧱 Infrastructure Diagram  
../assets/5.IaaC-Project-SCM-AWS_EKS-Terraform.png  
  
📂 File Structure  
  
6.IaC-Project-SCM-AWS_EKS-Terraform\iaac-vprofile\terraform/  
├── main.tf  
├── vpc.tf  
├── eks-cluster.tf  
├── terraform.tf  
├── outputs.tf  
└── variables.tf  
    
Tools required  
Terraform version 1.12.2  
    
Steps:  
  
terraform init  
terraform fmt -check  
terraform validate  
terraform plan -out planfile  
terraform apply -auto-approve  
