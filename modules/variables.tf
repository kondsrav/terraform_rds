# modules/rds/variables.tf

# Name for the RDS instance.
variable "db_identifier" {
  description = "The name of the DB instance"
  type        = string
}

# Type of database engine (MySQL, PostgreSQL, etc.).
variable "db_engine" {
  description = "The database engine (e.g., mysql, postgres)"
  type        = string
}

# Size of the RDS instance (e.g., db.t2.micro).
variable "db_instance_class" {
  description = "The instance type (e.g., db.t2.micro)"
  type        = string
}

# Amount of storage to allocate in GB.
variable "db_allocated_storage" {
  description = "The allocated storage in GB"
  type        = number
}

# Master username for database access.
variable "db_username" {
  description = "The master username"
  type        = string
}

# Master password for database access.
variable "db_password" {
  description = "The master password"
  type        = string
  sensitive   = true  # Marks this variable as sensitive, so it's not displayed in logs.
}

# Name of the database to create.
variable "db_name" {
  description = "The name of the database"
  type        = string
}

# Whether to skip the final backup snapshot when deleting the database.
variable "db_skip_final_snapshot" {
  description = "Whether to skip final snapshot before deletion"
  type        = bool
  default     = true  # Default value is true, meaning snapshots are skipped.
}

