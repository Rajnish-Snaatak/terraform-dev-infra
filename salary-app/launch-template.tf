resource "aws_launch_template" "salary_lt" {
  name_prefix   = "salary-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.salary_sg.id]

  #user_data = base64encode(file("${path.module}/user-data.sh"))

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "salary-app"
    }
  }
}
