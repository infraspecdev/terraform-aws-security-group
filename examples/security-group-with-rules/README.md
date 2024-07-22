# Example to create a egress rule for security group

## Example tf.vars
```
region = "ap-south-1"

name = "Security-group-name"
description = "Security-group-description"
tags = {
  "ManagedBy" = "Terraform"
}

egress_rules = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
]

ingress_rules = [
    {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    },
    {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
]
```

<!-- BEGIN_TF_DOCS -->
# Example to create a egress rule for security group

## Example tf.vars
```
region = "ap-south-1"

name = "Security-group-name"
description = "Security-group-description"
tags = {
  "ManagedBy" = "Terraform"
}

egress_rules = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
]

ingress_rules = [
    {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    },
    {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
]
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=  1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.51.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_egress"></a> [egress](#module\_egress) | ../../modules/rule | n/a |
| <a name="module_ingress"></a> [ingress](#module\_ingress) | ../../modules/rule | n/a |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the Security Group | `string` | n/a | yes |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | List of egress rules | <pre>list(object({<br>    from_port                = number<br>    to_port                  = number<br>    protocol                 = string<br>    cidr_blocks              = optional(list(string), [])<br>    ipv6_cidr_blocks         = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | List of ingress rules | <pre>list(object({<br>    from_port                = number<br>    to_port                  = number<br>    protocol                 = string<br>    cidr_blocks              = optional(list(string), [])<br>    ipv6_cidr_blocks         = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Security Group | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region where the Rule to be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the Security Group | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
