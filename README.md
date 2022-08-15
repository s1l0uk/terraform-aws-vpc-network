## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_subnet.subnet_data](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_mid](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_internet_gateway"></a> [enable\_internet\_gateway](#input\_enable\_internet\_gateway) | [Optional] If to enable the Internet Gateway Service. | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | [Optional] Extra Tags to add to your stack. | `map` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | [Optional] The root name for the Project. | `string` | `"Awesome Project!"` | no |
| <a name="input_network_cidr_range"></a> [network\_cidr\_range](#input\_network\_cidr\_range) | [Optional] The Primary Region to run operations and build within. | `string` | `"10.0.0.0/8"` | no |
| <a name="input_region"></a> [region](#input\_region) | [Required] The Region to run operations and build within. | `string` | n/a | yes |
| <a name="input_subject_cidr_range_data"></a> [subject\_cidr\_range\_data](#input\_subject\_cidr\_range\_data) | [Optional] The Primary Region to run operations and build within. | `list(string)` | `[]` | no |
| <a name="input_subject_cidr_range_mid"></a> [subject\_cidr\_range\_mid](#input\_subject\_cidr\_range\_mid) | [Optional] The Primary Region to run operations and build within. | `list(string)` | `[]` | no |
| <a name="input_subject_cidr_range_public"></a> [subject\_cidr\_range\_public](#input\_subject\_cidr\_range\_public) | [Optional] The Primary Region to run operations and build within. | `list(string)` | <pre>[<br>  "10.0.0.0/24",<br>  "10.0.0.1/24",<br>  "10.0.0.2/24"<br>]</pre> | no |

## Outputs

No outputs.
