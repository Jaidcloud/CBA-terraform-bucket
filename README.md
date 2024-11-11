# CBA-terraform-bucket
This repository contains a Terraform configuration file (main.tf) that defines an S3 bucket in AWS. A GitHub Actions workflow (deploy.yml) automatically deploys this configuration to AWS whenever a new commit is pushed to the main branch. The workflow securely uses AWS credentials stored in GitHub Secrets.
