terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
   region     = "us-east-1"
  access_key = "AKIAY6PGMOKIA5I2M5JL"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
}

output "out" {
   value = aws_instance_web
}