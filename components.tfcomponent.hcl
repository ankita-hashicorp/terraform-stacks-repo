
required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.8.1"
  }
    
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }
}

provider "random" "this" {}

provider "aws" "this" {
  config {
    region = "ap-south-1"
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key
    token = var.aws_session_token
    default_tags {
      tags = {
        Environment = var.environment_name
        Deployment  = "terraform-stacks"
        Region      = "ap-south-1"
      }
    }
  }
  
}
component "stacks-tfpolicy" {
  source = "./modules/stacks-tfpolicy-module"

  inputs = {
  }

  providers = {
    random = provider.random.this
    aws = provider.aws.this
  }
}

component "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0" 
  providers = {
    aws = provider.aws.this
  }
  inputs = {
    name = "my-stack-vpc"
    cidr = "10.0.0.0/16"
    azs             = ["ap-south-1a", "ap-south-1b"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  }
}
