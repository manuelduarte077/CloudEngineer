# Define the null provider
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

resource "null_resource" "hello_world" {
  # The local-exec provisioner runs a command on the local machine
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}
