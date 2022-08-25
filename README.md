## Terraform components for Secure Data Science Workshop

https://catalog.us-east-1.prod.workshops.aws/v2/workshops/c882cd42-8ec8-4112-9469-9fab33471e85/en-US/



### Pre Requisites

Follow the workshop material: 

* Create a Cloud9 Environment
  
* Perform these steps in lab1:
```bash
cd ~/environment
git clone https://github.com/aws-samples/amazon-sagemaker-studio-secure-data-science-workshop.git
cd ~/environment/amazon-sagemaker-studio-secure-data-science-workshop
```

```bash
if [[ "${C9_PROJECT}" ]]; then
  echo "In AWS Cloud9 environment"
  export AWS_ACCOUNT_ID=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|jq -r .accountId`
  export AWS_DEFAULT_REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|jq -r .region`
fi
```

```bash
./package_cloudformation.sh 
```


Do not run any other steps in Lab 1 
Do not do anything in Lab 2

Instead we will use Terraform to:

* Provision and populate the ECR repo.
* Create the VPC, subnets, VPC Endpoints, IAM Roles and Policies.
* Create the SageMaker domain needed by the lab.
* Create the Code Artifact repos - populated with the required packages.
* Create the Service Catalog products for provisioning the secure team environment and SageMaker user profiles.

----

## Prepare modified CloudFormation

### Step 00 - Copy modified CloudFormation

Copy the modified Cloud Formation Templates into place (used in step 04) 

```bash
cd ~/environment/secure-ds-workshop-terraform/00-cloudformation
./copy-cf-tos3.sh
```

## Terraform steps

### Step 01 - Build private ECR and load custom image

```bash
cd ~/environment/secure-ds-workshop-terraform/01-populate-ecr
terraform init
```
```bash
terraform validate && terraform plan -out tfplan 
```
```bash
terraform apply tfplan
```


### Step 02 - Build main Infrastructure and SageMaker Domain

Build the VPC, Artifact rpo and SageMaker Domain

```bash
cd ~/environment/secure-ds-workshop-terraform/02-infra-domain
terraform init
```
```bash
terraform validate && terraform plan -out tfplan 
```
```bash
terraform apply tfplan
```



### Step 03
```bash
cd ~/environment/secure-ds-workshop-terraform/03-populate-artifacts
terraform init
```
```bash
terraform validate && terraform plan -out tfplan 
```
```bash
terraform apply tfplan
```


### Step 04

```bash
cd ~/environment/secure-ds-workshop-terraform/04-service-catalog
terraform init
```
```bash
terraform validate && terraform plan -out tfplan 
```
```bash
terraform apply tfplan
```

-----

## Now proceed with the workshop as usual from 

### Lab 3: Secure Team Environment

https://catalog.us-east-1.prod.workshops.aws/v2/workshops/c882cd42-8ec8-4112-9469-9fab33471e85/en-US/security-for-sysops/team-resources/secure-environment-lab


-----

The Terraform content was created using:
https://github.com/aws-samples/aws2tf



