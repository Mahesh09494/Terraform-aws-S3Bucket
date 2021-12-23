provider "aws"{
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}
terraform {

    backend "s3"{
        bucket = "test949494"
        key = "terraform_statefile/terraform.tfstate"
        region = "us-east-1"
        access_key = ""
        secret_key = ""
    }
}

resource "aws_instance" "test"{
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.name
    }
}

resource "aws_s3_bucket" "test123"{

    bucket = var.bucketname
}
