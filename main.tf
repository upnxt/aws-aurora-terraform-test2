resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.cluster-name
  engine                  = "aurora-postgresql"  
  engine_mode             = "serverless"
  availability_zones      = var.cluster-availability-zones
  vpc_security_group_ids  = var.cluster-security-groups
  database_name           = var.database-name
  enable_http_endpoint    = true  
  master_username         = #TODO; aws kms
  master_password         = #TODO: aws kms
  backup_retention_period = 1
  skip_final_snapshot     = true
  
  scaling_configuration {
    auto_pause               = true
    min_capacity             = 2    
    max_capacity             = 2
    seconds_until_auto_pause = 300
    timeout_action           = "ForceApplyCapacityChange"
  }  
}
