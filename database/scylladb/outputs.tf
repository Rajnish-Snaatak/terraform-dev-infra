output "scylla_instance_id" {
  value = aws_instance.scylla.id
}

output "scylla_private_ip" {
  value = aws_instance.scylla.private_ip
}

