# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "bia"
resource "aws_db_instance" "bia" {
  allocated_storage                     = 20
  allow_major_version_upgrade           = null
  apply_immediately                     = null
  auto_minor_version_upgrade            = true
  availability_zone                     = "us-east-1d"
  backup_retention_period               = 1
  backup_window                         = "04:47-05:17"
  ca_cert_identifier                    = "rds-ca-2019"
  character_set_name                    = null
  copy_tags_to_snapshot                 = true
  custom_iam_instance_profile           = null
  customer_owned_ip_enabled             = false
  db_name                               = null
  db_subnet_group_name                  = "default-vpc-07400a2ed02c4aba4"
  delete_automated_backups              = true
  deletion_protection                   = false
  domain                                = null
  domain_iam_role_name                  = null
  enabled_cloudwatch_logs_exports       = []
  engine                                = "postgres"
  engine_version                        = "14.7"
  final_snapshot_identifier             = null
  iam_database_authentication_enabled   = false
  identifier                            = "bia"
  identifier_prefix                     = null
  instance_class                        = "db.t3.micro"
  iops                                  = 0
  license_model                         = "postgresql-license"
  maintenance_window                    = "fri:09:41-fri:10:11"
  manage_master_user_password           = null
  master_user_secret_kms_key_id         = null
  max_allocated_storage                 = 1000
  monitoring_interval                   = 0
  monitoring_role_arn                   = null
  multi_az                              = false
  nchar_character_set_name              = null
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-14"
  parameter_group_name                  = "default.postgres14"
  password                              = null # sensitive
  performance_insights_enabled          = false
  performance_insights_kms_key_id       = null
  performance_insights_retention_period = 0
  port                                  = 5432
  publicly_accessible                   = false
  replica_mode                          = null
  replicate_source_db                   = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = null
  storage_encrypted                     = true
  storage_throughput                    = 0
  storage_type                          = "gp2"
  tags                                  = {}
  tags_all                              = {}
  timezone                              = null
  username                              = "postgres"
  vpc_security_group_ids                = [aws_security_group.bia_db.id]
}
