🧱 Terraform: AWS VPC, EKS, ECR, S3, Helm and Automated CICD with Git-Actions  
  
- Built a complete cloud infrastructure with Terraform modules.  
- Custom VPC, subnets (public/private), NAT gateway, Internet Gateway.  
- EKS cluster with node-group, IAM roles, s3 for tfstate backup, security groups.  
- Creating Helm charts for workload deployments on EKS.  
- Automated CICD with Git-Actions. (PR & manually).  
  
  
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
  
  
AWS prerequisite:  
1.Create new IAM -user (Gitops), attach security policy > admin access  
2.Create new SSH key for GitActions  
3.download and install AWS-cli  
4.Open terminal and type aws configure, enter your AWS info:  
  a.AWS Access Key ID  =  key_value  
  b.AWS Secret Access Key  =  key_value  
  c.Default region name  =  REGION_NAME  
  d.json  
5.Create new Repository in ECR  
6.Create new s3 bucket under the desired AWS region  
  
  
GIT Actions prerequisite:  
1.Create GitHub SSH Key: Account settings > SSH and GPG keys > New_SSH_key  
2.Add AWS access key to iaac-vprofile Git Repository secrets:   
  iaac-vprofile repository > repository settings > Secrets and Variables > Actions > New Repository secrets  
  a.AWS_ACCESS_KEY_ID  =  key_value  
  b.AWS_SECRET_ACCESS_KEY  =  Key_value  
  c.BUCKET_TF_STATE  =  BUCKET_NAME  
3.Add AWS, ECR and SonarCloud access key to vprofile-actions Git Repository secrets:   
  vprofile-actions repository > repository settings > Secrets and Variables > Actions > New Repository secrets  
  a.AWS_ACCESS_KEY_ID  =  key_value  
  b.AWS_SECRET_ACCESS_KEY  =  Key_value  
  c.REGISTRY  =  URI of ECR repository  
  d.SONAR_ORGANIZATION  =  Key_value  
  e.SONAR_PROJECT_KEY  =  Key_value  
  f.SONAR_TOKEN  =  Key_value  
  g.SONAR_URL  =  https://sonarcloud.io  
4.opena new terminal on personal laptop:  
  a.config core.sshCommand "ssh -i ~/.ssh/gitActions -F /dev/null"  
  b.git config --global user.name <GitHub_account_name>  
  c.git config --global user.email <Account_Email_Addresss>  
5.Create new  folder > cd into this folder:  
  git clone https://github.com/Giladk6/iaac-vprofile.git   
  git clone https://github.com/Giladk6/vprofile-actions.git  
  
Tools required:  
Terraform version 1.12.2  
   
Steps:    
  
cd to /project_name/iaac-vprofile  
  
terraform init   
terraform fmt -check  
terraform validate   
terraform plan -out planfile  
terraform apply  
  
AWS infrastructure will get build in some time.  
  
  
