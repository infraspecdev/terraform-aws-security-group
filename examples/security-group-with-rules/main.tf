module "security_group" {
  source = "../.."

  name        = var.name
  description = var.description
  tags        = var.tags
}

module "ingress" {
  source            = "../../modules/rule"
  type              = "ingress"
  security_group_id = module.security_group.security_group_id
  rules             = var.ingress_rules
}

module "egress" {
  type              = "egress"
  source            = "../../modules/rule"
  security_group_id = module.security_group.security_group_id
  rules             = var.egress_rules
}
