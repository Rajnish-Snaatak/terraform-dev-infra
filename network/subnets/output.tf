############################
# Public Subnet Outputs
############################

output "public_subnet_1_id" {
  description = "Public subnet 1 ID (Bastion, NAT)"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "Public subnet 2 ID (ALB HA)"
  value       = aws_subnet.public_subnet_2.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id
  ]
}

############################
# Private Subnet Outputs
############################

output "frontend_subnet_id" {
  description = "Frontend private subnet ID"
  value       = aws_subnet.frontend_subnet.id
}

output "backend_subnet_id" {
  description = "Backend private subnet ID"
  value       = aws_subnet.backend_subnet.id
}

output "database_subnet_id" {
  description = "Database private subnet ID"
  value       = aws_subnet.database_subnet.id
}

output "private_subnet_ids" {
  description = "List of all private subnet IDs"
  value = [
    aws_subnet.frontend_subnet.id,
    aws_subnet.backend_subnet.id,
    aws_subnet.database_subnet.id
  ]
}

