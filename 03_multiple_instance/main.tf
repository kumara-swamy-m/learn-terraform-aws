terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
}

provider "aws" {
       region=var.region_name
}

resource "aws_security_group" "ssh_sg" {
  name = "allow-ssh-2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
 count  =  3
 ami                                   =   var.ami_value
 instance_type                         =   var.instance_type
 key_name                              =   var.key
 vpc_security_group_ids                = [aws_security_group.ssh_sg.id]
 
 tags =  {
           Name = var.instance_names[count.index]
       }
}

