data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "dev-otms-terraform-state"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_security_group" "salary_sg" {
  name        = "salary-sg"
  description = "Security group for Salary service"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id

  ingress {
    description     = "Allow traffic from ALB"
    from_port       = 8081
    to_port         = 8081
    protocol        = "tcp"
    security_groups = [data.terraform_remote_state.network.outputs.alb_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "salary-sg"
  }
}
