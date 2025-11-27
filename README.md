Terraform AWS EC2 Deployment (with Remote Backend)

This project provides a clean and automated way to provision infrastructure on AWS using Terraform.
It deploys an EC2 instance, configures secure SSH access, and uses a remote backend (S3 + DynamoDB) to safely manage Terraform state.

✨ Features

Automated EC2 instance provisioning

Secure state management with S3 + DynamoDB

Clear outputs for connecting to your server

Fully modular and easy to extend

📦 Prerequisites

Before running this project, ensure you have:

Terraform v1.2 or higher

AWS CLI installed and configured (run aws configure)

Basic understanding of Terraform workflow

📥 Clone the Repository

Use the following command to clone the project:

git clone   https://github.com/kumara-swamy-m/learn-terraform-aws.git

cd learn-terraform-aws

🚀 How to Deploy
1. Initialize Terraform

Downloads required providers and configures the remote backend.

terraform init

2. Validate the configuration

Ensures all files are correctly formatted.

terraform validate

3. Deploy the infrastructure

Creates the EC2 instance, backend resources, and networking.

terraform apply

🧹 Destroying the Infrastructure

To remove all created AWS resources:

terraform destroy

This ensures a clean teardown with no leftover resources.
