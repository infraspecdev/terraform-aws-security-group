module "egress" {
  source            = "../../modules/rule"
  type              = "egress"
  security_group_id = var.security_group_id
  rules             = var.rules
}
