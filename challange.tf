# create a file in local machine using terraform.

resource "null_resource" "file" {
 provisioner "local-exec" {
 command = "echo 'Message: ${upper("hello world!")}' >challange.txt"
 }
}


#how to make a git github_repository

resource "github_repository" "example" {
  name        = "terra_github_repo"
  description = "This repo is created using terraform"

  visibility = "public"
}
