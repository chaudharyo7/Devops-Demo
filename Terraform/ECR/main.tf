terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
resource "aws_ecr_repository" "tf-ecr" {
  name = "ecr-test"
}

output "ecr_repository_id" {
  description = "The ID of the ECR repository"
  value       = aws_ecr_repository.tf-ecr.id
}

output "ecr_registry_id" {
  description = "The registry ID (AWS account ID) of the ECR repository"
  value       = aws_ecr_repository.tf-ecr.registry_id
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = aws_ecr_repository.tf-ecr.repository_url
}

