
output "vpc_id" {
  value = aws_vpc.dev_vpc.id
}

output "public_subnets" {
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "frontend_subnet" {
  value = aws_subnet.frontend.id
}

output "backend_subnet" {
  value = aws_subnet.backend.id
}

output "middleware_subnet" {
  value = aws_subnet.middleware.id
}

output "database_subnet" {
  value = aws_subnet.database.id
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}

output "alb_listener_arn" {
  value = aws_lb_listener.http.arn
}

