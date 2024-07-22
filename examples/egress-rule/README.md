<!-- BEGIN_TF_DOCS -->
# Example to create a egress rule for security group

## Example tf.vars
```
region = "ap-south-1"

rules = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
]

security_group_id = "sg-adsfasdfasdfa"
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

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | AWS Region where the Rule to be created | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | List of egress rules | <pre>list(object({<br>    from_port                = number<br>    to_port                  = number<br>    protocol                 = string<br>    cidr_blocks              = optional(list(string), [])<br>    ipv6_cidr_blocks         = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | ID of the Security Group | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
