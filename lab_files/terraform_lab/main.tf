terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "fin-mobile-frontend" {
  ami           = data.aws_ami.aws_linux.id
  instance_type = "t3.micro"

  tags = {
    Name          = "Finance_Mobile_Front_End",
    Cost_Center   = var.cost_center,
    Admin_Contact = var.admin_group
  }
}


