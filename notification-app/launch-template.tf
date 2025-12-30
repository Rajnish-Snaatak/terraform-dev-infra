resource "aws_launch_template" "notification_lt" {
  name_prefix   = "notification-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.notification_sg.id
  ]

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "notification-app"
    }
  }
}
