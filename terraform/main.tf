provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0989fb15ce71ba39e"
  instance_type = "t3.micro"
  key_name      = "my-key"

  tags = {
    Name = "DevOps-Lab-Server"
  }
}