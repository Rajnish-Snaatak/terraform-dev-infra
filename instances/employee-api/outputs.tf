output "employee_api_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.employee_api.id
}

output "employee_api_private_ip" {
  description = "Private IP of EC2"
  value       = aws_instance.employee_api.private_ip
}

output "employee_api_security_group" {
  description = "Security Group attached to EC2"
  value       = aws_instance.employee_api.vpc_security_group_ids
}

output "employee_api_availability_zone" {
  description = "AZ of EC2"
  value       = aws_instance.employee_api.availability_zone
}
