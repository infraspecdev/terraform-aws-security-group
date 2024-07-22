module "ingress" {
  source            = "../../modules/rule"
  type              = "ingress"
  security_group_id = var.security_group_id
  rules             = var.rules
}
