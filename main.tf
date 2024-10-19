terraform {
  backend "remote" {
    organization = "domsol-terra"
    workspaces {
      name = "test-terra"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

aws_access_key_id = AKIA2UC3BSXMFU72VM5M
aws_secret_access_key = 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
