variable "ingress_rules" {
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

variable "egress_rules" {
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

variable "region" {
  description = "AWS Region where the Rule to be created"
  type        = string
}

variable "name" {
  description = "Name of the Security Group"
  type        = string
}

variable "description" {
  description = "Description of the Security Group"
  type        = string
}

variable "tags" {
  description = "Tags for the Security Group"
  type        = map(string)
  default     = {}
}
