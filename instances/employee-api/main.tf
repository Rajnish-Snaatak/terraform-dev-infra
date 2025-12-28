data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "employee_api" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = var.backend_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = false
  availability_zone           = "us-east-1a"

  tags = {
    Name        = "employee-api-dev"
    Application = "EmployeeApp"
    Owner       = "SyedRehanAli"
    Environment = "dev"
    CostCenter  = "OT-MICROSERVICES"
  }
}
