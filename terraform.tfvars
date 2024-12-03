# terraform.tfvars

db_identifier        = "my-rds-instance"        # Unique name for the RDS instance.
db_engine            = "mysql"                 # Use MySQL as the database engine.
db_instance_class    = "db.t3.micro"           # Instance size for low-cost use.
db_allocated_storage = 20                      # Allocate 20GB of storage.
db_username          = "admin"                 # Master username for database access.
db_password          = "MySuperSecurePassword" # Master password (keep secure).
db_name              = "mydatabase"            # Name of the database to create.

