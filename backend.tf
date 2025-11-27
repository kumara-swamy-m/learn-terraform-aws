terraform {
  backend "s3" {
    bucket         = "my-remote-backend-buck"   # SAME AS ABOVE
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-my-db"
    encrypt        = true
  }
}

