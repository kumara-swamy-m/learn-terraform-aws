output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.app_server.id
}

output "public_ip" {
  description = "Public IP Address"
  value       = aws_instance.app_server.public_ip
}

output "private_ip" {
  description = "Private IP Address"
  value       = aws_instance.app_server.private_ip
}
