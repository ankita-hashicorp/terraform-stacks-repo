
required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.8.1"
  }
    
  aws = {
    source  = "hashicorp/aws"
    region = "ap-south-1"
  }
}

provider "random" "this" {}
component "stacks-tfpolicy" {
  source = "./modules/stacks-tfpolicy-module"

  inputs = {
  }

  providers = {
    random = provider.random.this
  }
}
