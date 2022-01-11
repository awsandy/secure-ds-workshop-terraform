## Terraform components for Secure Data Science Workshop

https://catalog.us-east-1.prod.workshops.aws/v2/workshops/c882cd42-8ec8-4112-9469-9fab33471e85/en-US/



### Pre Requisites

Follow the workshop material: 

* Create a Cloud9 Environment
* Perform these steps in lab1:
* * `workshop-env.sh`
* * ./package_cloudformation.sh 
  

Do not run any other steps in Lab 1 

We will use Terraform instead to:

* provision and populate the ECR repo
* Create the VPC, subnets, VPC Endpoints, IAM Roles and Policies
* The SageMaker domain needed by the lab
* The Code Artifact repos - populated with the required packages
* The Service Catalog products for the environment and user profiles


Terraform steps

### Step 00 - Copy modified CloudFormation

Copy the modified Cloud Formation Templates into place (used in step 04) 

```bash
cd ~/environment/secure-ds-workshop-terraform/00-cloudformation
```

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


### Step 04

```bash
cd ~/environment/secure-ds-workshop-terraform/04-service-catalog
terraform init
```

-----

## Now proceed with the workshop as usual from 
## Lab 3: Secure Team Environment

https://catalog.us-east-1.prod.workshops.aws/v2/workshops/c882cd42-8ec8-4112-9469-9fab33471e85/en-US/security-for-sysops/team-resources/secure-environment-lab


