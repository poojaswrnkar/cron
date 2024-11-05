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
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  default     = "TerraformEC2"
}

resource "aws_instance" "server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change to your preferred AMI
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.server.id
}