resource "aws_autoscaling_policy" "employee_scale_out" {
  name                   = "employee-scale-out"
  autoscaling_group_name = aws_autoscaling_group.employee_asg.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = 1
  cooldown               = 300
}
