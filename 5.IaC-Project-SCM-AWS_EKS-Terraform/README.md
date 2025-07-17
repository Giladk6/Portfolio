🧱 Terraform: AWS VPC, EKS, ECR, S3, Helm and Automated CICD with Git-Actions  
  
Built a complete cloud infrastructure with Terraform modules.  
Custom VPC, subnets (public/private), NAT gateway, Internet Gateway.  
EKS cluster with node-group, IAM roles, s3 for tfstate backup, security groups.  
Creating Helm charts for workload deployments on EKS.  
Automated CICD with Git-Actions. (PR & manually).  
Git Repository for AWS infrastructure:  
https://github.com/Giladk6/iaac-vprofile.git  
  
Git Repository for Helm charts & WebApp source code  
https://github.com/Giladk6/vprofile-actions.git  
  
🧱 Infrastructure Diagram  
../assets/5.IaaC-Project-SCM-AWS_EKS-Terraform  
  
☁️ AWS Resources – Terraform  
Location:  
5.IaC-Project-SCM-AWS_EKS-Terraform/iaac-vprofile/terraform/  
├── main.tf  
├── vpc.tf  
├── eks-cluster.tf  
├── terraform.tf  
├── outputs.tf  
└── variables.tf  
  
⚙️ GitHub Actions – Terraform Workflow  
Location:  
5.IaC-Project-SCM-AWS_EKS-Terraform/iaac-vprofile/terraform/.github/workflows/  
└── terraform.yml  



🚀 Helm Charts – vProfile Application  
Location:  
5.IaC-Project-SCM-AWS_EKS-Terraform/vprofile-action/helm/vprofilecharts/templates/  
├── app-secret.yml  
├── db-CIP.yml  
├── mc-CIP.yml  
├── mcdep.yml  
├── rmq-CIP-service.yml  
├── rmq-dep.yml  
├── vproappdep.yml  
├── vproapp-service.yml  
├── vprodbdep.yml  
└── vproingress.yaml  
  
🔁 GitHub Actions – vProfile App CI Workflow  
Location:  
5.IaC-Project-SCM-AWS_EKS-Terraform/vprofile-action/.github/workflows/  
└── main.yml  
  
Tools required  
Terraform version 1.12.2  
  
Steps:  
  
terraform init  
terraform fmt -check  
terraform validate  
terraform plan -out planfile  
terraform apply -auto-approve  
  
