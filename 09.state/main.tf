terraform {
  backend "s3" {
    bucket = "tf-state-varundevops"
    key    = "09.state/terraform.ts-state"
    region = "us-east-1"
  }
}


variable "test" {
  default = "Hello"
}

output "test" {
  value = var.test
}

