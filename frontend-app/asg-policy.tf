resource "aws_autoscaling_policy" "frontend_scale_out" {
  name                   = "frontend-scale-out"
  autoscaling_group_name = aws_autoscaling_group.frontend_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = 1
  cooldown               = 300
}
