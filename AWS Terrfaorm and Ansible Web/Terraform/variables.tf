variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "Local AWS CLI profile name (optional)."
  type        = string
  default     = "joshua"
}


variable "VPC" {
  description = "VPC with the subnets Details"
  type = object({
  vpc_cidr = string
  subnet_cidr = string
  }) 
  default = {
    vpc_cidr =  "10.0.0.0/16"
    subnet_cidr = "10.0.1.0/24"
  }
}

variable "Instance" {
  description = "Instance Details"
  type = map(object({
  ami_id = string
  key_name = string
  instance_type = string
  user = "ubuntu"
  }))
}

