resource "aws_instance" "scylla" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id              = data.terraform_remote_state.network.outputs.database_subnet
  vpc_security_group_ids = [aws_security_group.scylla_sg.id]

  associate_public_ip_address = false

  user_data = file("${path.module}/user-data.sh")

  root_block_device {
    volume_size = var.volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "scylla-db"
  }
}

