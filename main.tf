resource "aws_security_group" "this" {
  name        = var.name
  description = var.description
  vpc_id      = coalesce(var.vpc_id, data.aws_vpc.default.id)

  tags = var.tags
}
