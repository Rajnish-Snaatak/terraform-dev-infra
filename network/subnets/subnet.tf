#################################
# Public Subnet 1 (Bastion + NAT)
#################################
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "dev-public-subnet-1"
    Tier = "public"
  })
}

#################################
# Public Subnet 2 (ALB - HA)
#################################
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "dev-public-subnet-2"
    Tier = "public"
  })
}

#################################
# Frontend Subnet
#################################
resource "aws_subnet" "frontend_subnet" {
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = "10.0.14.0/23"
  availability_zone = "us-east-1a"

  tags = merge(local.common_tags, {
    Name = "dev-frontend-subnet"
    Tier = "frontend"
  })
}

#################################
# Backend Subnet
#################################
resource "aws_subnet" "backend_subnet" {
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = "10.0.8.0/22"
  availability_zone = "us-east-1a"

  tags = merge(local.common_tags, {
    Name = "dev-backend-subnet"
    Tier = "backend"
  })
}

#################################
# Database Subnet
#################################
resource "aws_subnet" "database_subnet" {
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = "10.0.16.0/25"
  availability_zone = "us-east-1a"

  tags = merge(local.common_tags, {
    Name = "dev-database-subnet"
    Tier = "database"
  })
}

