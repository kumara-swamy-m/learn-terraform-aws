variable "aws_region" {
  description = "AWS region where EC2 will be created" #descripition and the type are optional and even default is also optional but after terrafom apply it                                                       # behaves differently
  type        = string
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID used for the EC2 instance"
  type        = string
  default     = "ami-02fda57d7882770d8"  # You can replace this anytime
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  default     = "learn-terraform-basic"
}

