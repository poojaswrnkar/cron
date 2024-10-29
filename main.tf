provider "aws" {
  region     = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

resource "aws_instance" "server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI, choose as per region
  instance_type = var.instance_type

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}

output "instance_id" {
  value = aws_instance.server.id
}
