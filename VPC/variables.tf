# variable for VPC
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
