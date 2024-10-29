provider "aws" {
  region = var.region  # Using the region variable
}

resource "aws_instance" "server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI
  instance_type = var.instance_type
  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}

output "instance_id" {
  value = aws_instance.server.id
}
