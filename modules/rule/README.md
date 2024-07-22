## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=  1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rules"></a> [rules](#input\_rules) | List of egress rules | <pre>list(object({<br>    from_port                = number<br>    to_port                  = number<br>    protocol                 = string<br>    cidr_blocks              = optional(list(string), [])<br>    ipv6_cidr_blocks         = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | The ID of the security group to attach the rules to | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of Security Group rule | `any` | n/a | yes |

## Outputs

No outputs.
