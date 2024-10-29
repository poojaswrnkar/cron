terraform {
  cloud {
    workspaces {
      name = "Devops_LL"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
