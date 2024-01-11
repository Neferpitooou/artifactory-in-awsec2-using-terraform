# Terraform Block
terraform {
  required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
}

# NOTES: Instance type is "t2.medium" because installing artifactory requires at least 4GB.
# Pre-requisites:
# VM needs to have at least 4GB RAM, for AWS choose at least medium instance type.
# Default ports 8081 and 8082 needs to be opened. 8081 for Artifactory REST APIs. 8082 for everything else (UI, and all other product’s APIs).