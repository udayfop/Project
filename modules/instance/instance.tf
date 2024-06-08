resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI 
  instance_type = "t2.small"
  subnet_id     = var.subnet_id

  tags = {
    Name = "web-instance"
  }
}
