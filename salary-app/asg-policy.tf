resource "aws_autoscaling_policy" "salary_scale_out" {
  name                   = "salary-scale-out"
  autoscaling_group_name = aws_autoscaling_group.salary_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = 1
  cooldown               = 300
}
