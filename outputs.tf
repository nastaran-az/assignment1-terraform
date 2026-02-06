output "aws_region" {
  value = var.aws_region
}

output "ecr_webapp_repo_url" {
  value = aws_ecr_repository.webapp.repository_url
}

output "ecr_mysql_repo_url" {
  value = aws_ecr_repository.mysql.repository_url
}

output "ec2_public_ip" {
  value = aws_instance.app_ec2.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.app_ec2.public_dns
}
