resource "aws_db_instance" "web_db" {
    allocated_storage = var.db_storage
    storage_type = var.db_storage_type
    engine = var.db_engine
    name = var.db_name
    username = var.db_username
    password = var.db_password
    parameter_group_name = var.db_param_group
    skip_final_snapshot = true
    
  
}