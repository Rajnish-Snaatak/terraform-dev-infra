data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "frontend_app" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = var.frontend_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true  # frontend usually needs public access
  availability_zone           = "us-east-1a"

  tags = {
    Name        = "frontend-app-dev"
    Application = "FrontendApp"
    Owner       = "SyedRehanAli"
    Environment = "dev"
    CostCenter  = "OT-MICROSERVICES"
  }
}
