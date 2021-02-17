provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "nginx1" {
  ami           = var.ami_ubuntu_18_eu_west_1
  instance_type = "t2.micro"
  availability_zone = var.availability_zone
  key_name      = aws_key_pair.key.key_name

  security_groups = [
    aws_security_group.security_group.name
  ]

  tags = {
    Name = "EC2_INSTANCE_1"
  }
}

resource "aws_instance" "nginx2" {
  ami           = var.ami_ubuntu_18_eu_west_1
  instance_type = "t2.micro"
  availability_zone = var.availability_zone
  key_name      = aws_key_pair.key.key_name

  security_groups = [
    aws_security_group.security_group.name
  ]

  tags = {
    Name = "EC2_INSTANCE_2"
  }
}


resource "aws_security_group" "security_group" {
  name        = "default-security-group"
  description = "Allow SSH traffic"


  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port = ingress.value
      to_port   = ingress.value
      protocol  = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "ssh-key"
  public_key = var.aws_public_key
}

output "public_dns_nginx1" {
  value = aws_instance.nginx1.public_dns
}
output "public_dns_nginx2" {
  value = aws_instance.nginx2.public_dns
}