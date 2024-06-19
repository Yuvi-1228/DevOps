resource "aws_instance" "app_instance" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
  instance_type = "t2.micro"

}