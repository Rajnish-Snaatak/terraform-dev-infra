output "listener_rule_arn" {
  description = "ARN of the created ALB listener rule"
  value       = aws_lb_listener_rule.frontend_listener_rule.arn
}
