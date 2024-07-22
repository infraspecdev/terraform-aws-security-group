variable "security_group_id" {
  description = "The ID of the security group to attach the rules to"
  type        = string
}

variable "rules" {
  description = "List of egress rules"
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
  }))
  default = []
}

variable "type" {
  description = "Type of Security Group rule"
  type        = string
}
