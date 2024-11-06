variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-west-2"  # Set a default region or leave it empty
}

# variable "instance_name" {
#   description = "Name of the EC2 instance"
#   type        = string
# }

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro" 
}

variable "environment" {
  description = "Environment name (dev/stag)"
  type        = string
}
variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}
variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}


