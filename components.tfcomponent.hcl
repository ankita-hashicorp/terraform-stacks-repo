
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

provider "aws" "this" {}
component "stacks-tfpolicy" {
  source = "./modules/stacks-tfpolicy-module"

  inputs = {
  }

  providers = {
    random = provider.random.this
    aws = provider.aws.this
  }
}
