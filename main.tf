# main.tf

# Calls the RDS module located in the "modules/rds" directory.
module "rds" {
  source = "./modules/rds"  # The path to the RDS module.

  # Passes variable values to the module.
  db_identifier        = var.db_identifier
  db_engine            = var.db_engine
  db_instance_class    = var.db_instance_class
  db_allocated_storage = var.db_allocated_storage
  db_username          = var.db_username
  db_password          = var.db_password
  db_name              = var.db_name
  db_skip_final_snapshot = var.db_skip_final_snapshot
}

