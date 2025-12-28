terraform {
  backend "s3" {
    bucket = "dev-ot-ms-terraform-state"
    key    = "network/routes/terraform.tfstate"
    region = "us-east-1"
  }
}

