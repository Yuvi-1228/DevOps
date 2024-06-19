#This file contains all the variable definitions.
variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "ap-south-1"
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

# AMI ID LIST

variable "ec2_amazon_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-0e1d06225679bc1c5"  # This ID for Amazon Linux Server
}

variable "ec2_ubuntu_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-0f58b397bc5c1f2e8"  # This ID for Ubuntu Server
}

variable "ec2_mac_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-03e6eb5b158a325d9"  # This ID for MAC server
}

variable "ec2_win_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-09f6da726716a4ca6"  # This ID for Windows Server
}

variable "ec2_redhat_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-022ce6f32988af5fa"  # This ID for RedHat Server
}

variable "ec2_suse_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-032d99e94c84338c2"  # This ID for SUSE Server
}

variable "ec2_debian_ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-0850beb48a8b4bb46"  # This ID for Debian Server
}

# END OF AMI 
# BEGIN FOR INSTANCE TYPE 

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}



# END OF INSTANCE TYPE 
#BEGIN FOR KEY NAME

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  default     = "deployer-key"
}

# END OF KEY NAME

variable "public_key_path" {
  description = "The path to the public key file"
  default     = "~/.ssh/id_rsa.pub"
}
