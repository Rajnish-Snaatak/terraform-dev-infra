output "frontend_app_instance_id" {
  description = "EC2 instance ID for frontend"
  value       = aws_instance.frontend_app.id
}

output "frontend_app_public_ip" {
  description = "Public IP of frontend EC2"
  value       = aws_instance.frontend_app.public_ip
}

output "frontend_app_security_group" {
  description = "Security Group attached to frontend EC2"
  value       = aws_instance.frontend_app.vpc_security_group_ids
}

output "frontend_app_availability_zone" {
  description = "AZ of frontend EC2"
  value       = aws_instance.frontend_app.availability_zone
}
