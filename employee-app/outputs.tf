output "employee_asg_name" {
  value = aws_autoscaling_group.employee_asg.name
}

output "employee_target_group" {
  value = aws_lb_target_group.employee_tg.arn
}
