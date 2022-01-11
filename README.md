## Terraform components for Secure Data Science Workshop

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

### Step 00

Copy the modified Cloud Formation Templates into pace (used in step 04) 

### Step 01

Create the ECR repo , build the custom docker image and push to our private ECR repo

### Step 02



### Step 03

