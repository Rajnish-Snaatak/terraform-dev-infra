resource "aws_autoscaling_policy" "notification_scale_out" {
  name                   = "notification-scale-out"
  autoscaling_group_name = aws_autoscaling_group.notification_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = 1
  cooldown               = 300
}
