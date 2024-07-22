variable "name" {
  description = "(Optional, Forces new resource) Name of the security group."
  type        = string
}

variable "description" {
  description = "(Optional, Forces new resource) Security group description."
  type        = string
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "(Optional, Forces new resource) VPC ID."
  type        = string
  default     = null
}

variable "tags" {
  description = " (Optional) Map of tags to assign to the resource. "
  type        = map(string)
  default     = {}
}
