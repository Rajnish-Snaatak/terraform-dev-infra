resource "aws_security_group" "dev_backend_sg" {
  name        = var.sg_name
  description = "Dev Security Group for Employee App Backend"
  vpc_id      = var.vpc_id

  # SSH from within VPC
  ingress {
    description = "SSH from within VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  # Dev app access
  ingress {
    description = "Dev App access"
    from_port   = 8082
    to_port     = 8082
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Application = "EmployeeApp"
    Owner       = "YourName"
    Environment = "dev"
    CostCenter  = "OT-MICROSERVICES"
    Name        = var.sg_name
  }
}
