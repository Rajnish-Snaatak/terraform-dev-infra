resource "aws_launch_template" "employee_lt" {
  name_prefix   = "employee-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.employee_sg.id]

  # user_data = base64encode(file("${path.module}/user-data.sh"))

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "employee-app"
    }
  }
}
