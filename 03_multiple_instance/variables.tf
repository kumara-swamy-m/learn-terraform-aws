variable "instance_names" {
  default = ["frontend", "backend","database"]
}
variable "key" {
   default = "mykey"
}

variable "ami_value" {
   default="ami-0021ac0c2e69d9c55"
}
variable "instance_type" {
 default = "t3.micro"
}
variable "region_name" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}
