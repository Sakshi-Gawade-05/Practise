#provider is removed

resource "aws_instance" "demo" {
  ami                     = "ami-03f4878755434977f"
  instance_type           = "t2.micro"

 tags = {
    Name = "Hello world"
  }
}

resource "github_repository" "example" {
  name        = "terra_github_repo"
  description = "This repo is created using terraform"

  visibility = "public"
}
