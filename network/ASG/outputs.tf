output "asg_name" {
  description = "Auto Scaling Group name"
  value       = aws_autoscaling_group.frontend_asg.name
}

output "asg_arn" {
  description = "ARN of the Auto Scaling Group"
  value       = aws_autoscaling_group.frontend_asg.arn
}
