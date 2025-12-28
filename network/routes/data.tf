data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "dev-ot-ms-terraform-state"
    key    = "network/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "subnets" {
  backend = "s3"
  config = {
    bucket = "dev-ot-ms-terraform-state"
    key    = "network/subnets/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "igw" {
  backend = "s3"
  config = {
    bucket = "dev-ot-ms-terraform-state"
    key    = "network/igw/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "nat" {
  backend = "s3"
  config = {
    bucket = "dev-ot-ms-terraform-state"
    key    = "network/nat/terraform.tfstate"
    region = "us-east-1"
  }
}

