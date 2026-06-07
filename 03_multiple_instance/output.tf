output "Public_ips" {
  value = aws_instance.app_server[*].public_ip
}

output "Instance_ids" {
  value = aws_instance.app_server[*].id
}
