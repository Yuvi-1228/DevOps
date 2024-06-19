resource "aws_launch_configuration" "lc" {
  name          = "web-lc"
  image_id      = "ami-0c55b159cbfafe1f0" # replace with a suitable AMI ID
  instance_type = "t2.micro"
  security_groups = [aws_security_group.web-sg.id]

  lifecycle {
    create_before_destroy = true
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 80 &
              EOF
}

resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.lc.id
  vpc_zone_identifier  = aws_subnet.subnet[*].id
  min_size             = 1
  max_size             = 2
  desired_capacity     = 1

  tag {
    key                 = "Name"
    value               = "web-asg"
    propagate_at_launch = true
  }
}
