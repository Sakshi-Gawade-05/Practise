provider "aws" {
    region = "ap-south-1"
    }

resource "aws_instance" "demo" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "t2.micro"

 tags = {
    Name = "Hello world"
  }
}

