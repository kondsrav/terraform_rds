# metadata.tf

resource "aws_tags" "this" {
  resource_id = module.rds.db_instance_arn  # Attaches tags to the RDS instance.
  tags = {
    Environment = "production"  # Specifies the environment as "production".
    Application = "myapp"       # Tags it with the application name.
  }
}

