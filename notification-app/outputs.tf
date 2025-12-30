output "notification_asg_name" {
  value = aws_autoscaling_group.notification_asg.name
}

output "notification_target_group" {
  value = aws_lb_target_group.notification_tg.arn
}
