terraform {
  backend "s3" {
    bucket         = "km-terraform-state-20251210223547"
    key            = "envs/dev/vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
