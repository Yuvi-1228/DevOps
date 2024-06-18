# Create Multiple EC2 with same AMI 

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}
# If you want create different EC2 with different name 
/*locals {
  instance = toset(["Name1", "Name2", "Name3", "Name4"])
}*/

resource "aws_instance" "web" {
  count         = var.instance_count                // If you want count module 
  //for_each      = local.instance                  // If you want to for_each module
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet1.id
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [
    aws_security_group.allow_ssh.name
  ]

  tags = {
    Name = "web-instance-${count.index}"            //if you are using count
   // Name = each.key                               // If you are using for_each
  }
}

# Create Multiple EC2 with Different AMI 

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}
# If you want create different EC2 with different name 
/*locals {
  instance = {"Name1:ami_id", "Name2:ami_id", "Name3:ami_id", "Name4:ami_id"}
}*/

resource "aws_instance" "web" {
  count         = var.instance_count        // If you want count module 
  //for_each      = local.instance          // If you want to for_each module
  ami           = var.ami_id                
  //ami         = each.value                  // If you are using for_each module for diiferent AMI         
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet1.id
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [
    aws_security_group.allow_ssh.name
  ]

  tags = {
    Name = "web-instance-${count.index}"            // If you are using count
   // Name = each.key                               // If you are using for_each
  }
}