provider "aws" {
    region = "ap-south-1"
    }
resource "aws_instance" "demo" {
  ami                     = "ami-03f4878755434977f"
  instance_type           = "t2.micro"

 tags = {
    Name = "Hello world"
  }
}
#s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucketname
}

resource "aws_iam_user" "myuser" {
    name = "${var.username}-user"
}

#terraform apply -var-gile="staging.tfvars"