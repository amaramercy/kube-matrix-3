project                         = "km"
environment                     = "prod"

region                          = "us-east-1"
region_short                    = "use1"

az_count                        = "2"
az1                             = "use1b"
az2                             = "use1a"

# ---------------------------------------
# Tags (added from dev)
# ---------------------------------------
tags = {
  Project     = "km"
  Environment = "prod"
  Owner       = "DevTeam"
}

# ---------------------------------------
# VPC settings
# ---------------------------------------
component                       = "vpc"
vpc_cidr                        = "10.10.0.0/16"
public_subnet_cidrs             = ["10.10.1.0/24", "10.10.2.0/24"]
private_subnet_cidrs            = ["10.10.101.0/24", "10.10.102.0/24"]

# ---------------------------------------
# EC2 
# ---------------------------------------
instance_type                   = "t3.large"
ssh_public_key                  = "~/.ssh/id_rsa.pub"
ec2_admin_username              = "ec2-user"
admin_password                  = "ProdSecurePassword123!"

# ---------------------------------------
# EKS Cluster (added from dev)
# ---------------------------------------
eks_cluster_version            = "1.34"
eks_node_instance_type         = "t3.small"
eks_node_min_size              = 1
eks_node_max_size              = 3
eks_node_desired_size          = 2
eks_disk_size                  = 30

# extra from dev
cluster_name                   = "eks"
name_prefix                    = "km"

# ---------------------------------------
# Aurora Database (added & aligned to dev names)
# ---------------------------------------
# dev had aurora_* names, you used db_*
# I am **not changing your names**, only adding missing settings
db_master_username             = "prodmysqladmin"
db_master_password             = "SecureDBPassword123!"
db_master_password_ssm_key     = "/km/prod/db/master_password"
db_name                        = "km_prod"

aurora_engine_version          = "8.0.mysql_aurora.3.08.2"

aurora_min_capacity            = 0.5
aurora_max_capacity            = 4

aurora_backup_retention_days   = 7

aurora_serverless_v2_scaling_min = 0.5
aurora_serverless_v2_scaling_max = 4
