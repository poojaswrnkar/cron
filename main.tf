terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform { 
  cloud { 
  
    organization = "Devops_LL" 

    workspaces { 
      name = "new-p-cron" 
    } 
  } 
}

provider "aws" {
  region = "us-east-1"  # Change to your desired region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  default     = "TerraformEC2"
}

resource "aws_instance" "server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.server.id
}
