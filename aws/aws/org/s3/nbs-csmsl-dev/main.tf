terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

module "s3" {
  source = "../../../module/s3"

  bucket_name        = var.bucket_name
  force_destroy      = var.force_destroy
  versioning_enabled = var.versioning_enabled

  tags = var.tags
}
