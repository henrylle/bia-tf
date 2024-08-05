output "instancia_id" {
  description = "ID da EC2"
  value       = aws_instance.bia_dev.id
}

output "instancia_type" {
  description = "Tipo da EC2"
  value       = aws_instance.bia_dev.instance_type
}

output "instancia_public_ip" {
  description = "IP publico da EC2"
  value       = aws_instance.bia_dev.public_ip
}

output "instancia_private_ip" {
  description = "IP privado da EC2"
  value       = aws_instance.bia_dev.private_ip
}

output "availability_zone" {
  description = "Tipo da zona"
  value       = aws_instance.bia_dev.availability_zone
}

output "instance_volume_size" {
  description = "Volume da EC2"
  value       = aws_instance.bia_dev.root_block_device[0].volume_size
}

output "instance_volume_type" {
  description = "Tipo do volume da EC2"
  value       = aws_instance.bia_dev.root_block_device[0].volume_type
}

output "rds_endpoint" {
  description = "Endpoint do RDS da Bia"
  value       = aws_db_instance.bia-db.endpoint
}

output "rds_secrets" {
  description = "Secrets associado ao RDS"
  value       = data.aws_secretsmanager_secret.bia_db.name
}

output "bia_repo_url" {
  value = aws_ecr_repository.bia_tf.repository_url
}

output "bia_repo_arn" {
  value = aws_ecr_repository.bia_tf.arn
}

output "instancia_security_group" {
  description = "SG da EC2"
  value       = aws_instance.bia_dev.security_groups
}
