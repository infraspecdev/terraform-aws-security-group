resource "aws_security_group_rule" "this" {
  for_each = { for idx, rule in var.rules : idx => rule }

  type              = var.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  security_group_id = var.security_group_id
  cidr_blocks       = each.value.cidr_blocks
  ipv6_cidr_blocks  = each.value.ipv6_cidr_blocks
}
