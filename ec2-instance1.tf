# Launch an EC2 Instance in the web1-Subnet
resource "aws_instance" "wordpress-instance1" {
  ami                         = "ami-0e54eba7c51c234f6" # Amazon Linux 2 AMI
  instance_type               = "t2.micro"
  count                       = 1
##  key_name                    = "goutham"
  vpc_security_group_ids      = [aws_security_group.Gowtham-sg.id]
  subnet_id                   = aws_subnet.web1-public-subnet.id
  associate_public_ip_address = true
  user_data                   = file("wordpress.sh")

  tags = {
    Name = "wordpress-instance1"
  }
}

