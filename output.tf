output "Instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "Public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "Private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.app_server.private_ip
}


output "Bucket_id" {
  value       =  aws_s3_bucket.tf_state_bucket.id
}

output "dynamo_id" {
  value       = aws_dynamodb_table.tf_lock_table.id
}
   
