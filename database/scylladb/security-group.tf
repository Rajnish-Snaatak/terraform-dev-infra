data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "dev-otms-terraform-state"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_security_group" "scylla_sg" {
  name        = "scylla-sg"
  description = "Security group for ScyllaDB"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id

  ingress {
    description = "CQL"
    from_port   = 9042
    to_port     = 9042
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "scylla-sg"
  }
}

