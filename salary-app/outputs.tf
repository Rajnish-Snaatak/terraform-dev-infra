output "salary_asg_name" {
  value = aws_autoscaling_group.salary_asg.name
}

output "salary_target_group" {
  value = aws_lb_target_group.salary_tg.arn
}
