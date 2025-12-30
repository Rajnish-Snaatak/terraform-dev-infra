output "frontend_asg_name" {
  value = aws_autoscaling_group.frontend_asg.name
}

output "frontend_target_group" {
  value = aws_lb_target_group.frontend_tg.arn
}
