# modules/rds/outputs.tf

# Outputs the database's endpoint for connecting to it.
output "db_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.this.endpoint
}

# Outputs the ARN (Amazon Resource Name) of the RDS instance.
output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.this.arn
}

