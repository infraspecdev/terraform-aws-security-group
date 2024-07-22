variable "security_group_id" {
  description = "ID of the Security Group"
  type        = string
}

variable "rules" {
  description = "List of ingress rules"
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
  }))
  default = []
}

variable "region" {
  description = "AWS Region where the Rule to be created"
  type        = string
}
