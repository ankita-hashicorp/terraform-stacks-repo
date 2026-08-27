
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
}
