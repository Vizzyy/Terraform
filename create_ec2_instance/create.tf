terraform {
  backend "s3" {
    bucket = "vizzyy-terraform"
    key    = "create/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
