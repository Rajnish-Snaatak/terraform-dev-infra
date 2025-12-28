output "frontend_launch_template_id" {
  description = "ID of the frontend launch template"
  value       = aws_launch_template.frontend_lt.id
}

output "frontend_launch_template_name" {
  description = "Name of the frontend launch template"
  value       = aws_launch_template.frontend_lt.name
}
