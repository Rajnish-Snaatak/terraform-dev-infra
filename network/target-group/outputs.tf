output "employee_target_group_arn" {
  description = "ARN of the Employee App target group"
  value       = aws_lb_target_group.employee_tg.arn
}

output "employee_target_group_name" {
  description = "Name of the Employee App target group"
  value       = aws_lb_target_group.employee_tg.name
}
