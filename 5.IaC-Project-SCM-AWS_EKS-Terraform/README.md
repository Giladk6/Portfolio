🧱 Terraform: AWS VPC, EKS, ECR, S3, Helm, and Automated CI/CD with GitHub Actions  
   
Provisioned a complete cloud infrastructure using Terraform modules, including:    
  •	Custom VPC, public/private subnets, NAT Gateway, and Internet Gateway   
  •	EKS Cluster with worker node group, IAM roles, security groups, and remote S3 backend for state storage   
  •	Helm charts to deploy the vProfile application on EKS   
  •	CI/CD pipelines using GitHub Actions (manual and pull request triggered workflows)   
     
📁 GitHub Repositories   
  • AWS Infrastructure (Terraform):  
    🔗 https://github.com/Giladk6/iaac-vprofile.git  
   
  •	Helm Charts & WebApp Source Code:  
    🔗 https://github.com/Giladk6/vprofile-actions.git  
   
📊 Infrastructure Diagram  
  📍 ../assets/5.IaaC-Project-SCM-AWS_EKS-Terraform  
    
☁️ AWS Resources (Terraform)  
  📁 5.IaC-Project-SCM-AWS_EKS-Terraform/iaac-vprofile/terraform/   
  ├── main.tf  
  ├── vpc.tf  
  ├── eks-cluster.tf  
  ├── terraform.tf  
  ├── outputs.tf   
  └── variables.tf   
   
⚙️ GitHub Actions – Terraform Workflow  
  📁 .github/workflows/terraform.yml  
  Located at:  
    5.IaC-Project-SCM-AWS_EKS-Terraform/iaac-vprofile/terraform/.github/workflows/  

      
🚀 Helm Charts – vProfile Application   
  📁 5.IaC-Project-SCM-AWS_EKS-Terraform/vprofile-actions/helm/vprofilecharts/templates/   
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
   
🔁 GitHub Actions – vProfile CI Workflow  
  📁 .github/workflows/main.yml  
  Located at:  
    5.IaC-Project-SCM-AWS_EKS-Terraform/vprofile-actions/.github/workflows/  
   
  
🛠️ AWS Prerequisites  
  1.Create a new IAM user <Gitops> and attach AdministratorAccess policy  
  2.Create an SSH key for GitHub Actions  
  3.Install the AWS CLI and configure via. terminal using: "aws configure"  
    o	AWS Access Key ID  
    o	AWS Secret Access Key  
    o	Default region  
    o	Output format (json)  
  5.	Create a new ECR repository  
  6.	Create a new S3 bucket in the desired AWS region  
  
    
🔐 GitHub Actions – Secrets Configuration  
  For iaac-vprofile repository:  
  repository Settings > Secrets and Variables > Actions > New repository secret  
    •	AWS_ACCESS_KEY_ID = your_key  
    •	AWS_SECRET_ACCESS_KEY = your_secret  
    •	BUCKET_TF_STATE = your_s3_bucket_name  
   
  For vprofile-actions repository:  
  repository Settings > Secrets and Variables > Actions > New repository secret  
    •	AWS_ACCESS_KEY_ID = your_key  
    •	AWS_SECRET_ACCESS_KEY = your_secret  
    •	REGISTRY = URI of your AWS ECR repository  
    •	SONAR_ORGANIZATION = your_key  
    •	SONAR_PROJECT_KEY = your_key  
    •	SONAR_TOKEN = your_key  
    •	SONAR_URL = https://sonarcloud.io  
  
    
💻 Local Git Setup  
# Set SSH for GitHub Actions  
  git config core.sshCommand "ssh -i ~/.ssh/gitActions -F /dev/null"  
# Configure Git user  
  git config --global user.name "<your_github_username>"  
  git config --global user.email "<your_email>"  
# Then clone the repositories:  
  git clone https://github.com/Giladk6/iaac-vprofile.git  
  git clone https://github.com/Giladk6/vprofile-actions.git  
    
🧰 Tools Required  
•	Terraform version 1.12.2  
      
🚀 Deployment Steps:  
  cd iaac-vprofile/terraform/  
    terraform init  
    terraform fmt -check  
    terraform validate  
    terraform plan -out planfile  
    terraform apply  
    
✅ The AWS infrastructure will be built in 10–20 minutes.  
   
