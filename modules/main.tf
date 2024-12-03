# modules/rds/main.tf
resource "aws_db_instance" "this" {
  # The resource block creates an RDS instance in AWS.

  identifier = var.db_identifier  # Unique name to identify the RDS instance.
  engine     = var.db_engine      # Type of database engine (e.g., MySQL, PostgreSQL).
  instance_class = var.db_instance_class  # Specifies the instance size (e.g., db.t2.micro).
  allocated_storage = var.db_allocated_storage  # Amount of storage (in GB) to allocate for the database.

  username = var.db_username  # Master username for database access.
  password = var.db_password  # Master password for database access.
  db_name  = var.db_name       # Name of the database to be created in the instance.

  skip_final_snapshot = var.db_skip_final_snapshot  # Skips taking a backup snapshot when the database is deleted.

  tags = {
    Name = var.db_identifier  # Adds a "Name" tag to the resource with the value of the database name.
  }
}

