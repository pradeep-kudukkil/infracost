resource "aws_instance" "frontend" {
  ami             = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main.id
  security_groups = [aws_security_group.main.name]

  root_block_device {
    volume_type = "gp2"
    volume_size = 8
  }

  tags = {
    Name = "FrontendServer"
  }
}

resource "aws_instance" "backend" {
  ami             = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main.id
  security_groups = [aws_security_group.main.name]

  root_block_device {
    volume_type = "gp3"
    volume_size = 20
  }

  tags = {
    Name = "BackendServer"
  }
}
