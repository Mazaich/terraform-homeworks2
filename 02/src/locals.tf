locals {
  project_name = "netology"
  environment  = var.vpc_name
  platform     = "platform"
  vm_web_name = "${local.project_name}-${local.environment}-${local.platform}-web"
  vm_db_name  = "${local.project_name}-${local.environment}-${local.platform}-db"
}
