#This file contains all the variable definitions.
variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "The CIDR block for the first subnet"
  default     = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  description = "The CIDR block for the second subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone1" {
  description = "The availability zone for the first subnet"
  default     = "us-east-1a"
}

variable "availability_zone2" {
  description = "The availability zone for the second subnet"
  default     = "us-east-1b"
}

variable "allow_ssh_cidr" {
  description = "The CIDR block allowed to access the instances via SSH"
  default     = "0.0.0.0/0"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-0c55b159cbfafe1f0"  # Example AMI ID for Amazon Linux 2 in us-east-1; change as needed
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  default     = "deployer-key"
}

variable "public_key_path" {
  description = "The path to the public key file"
  default     = "~/.ssh/id_rsa.pub"
}
