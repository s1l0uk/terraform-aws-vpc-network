## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_subnet_addrs"></a> [subnet\_addrs](#module\_subnet\_addrs) | hashicorp/subnets/cidr | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.private_internet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.internet_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | [Optional] A list of Availability zones to operate in. | `list(string)` | <pre>[<br>  "a",<br>  "b",<br>  "c"<br>]</pre> | no |
| <a name="input_enable_private_internet_access"></a> [enable\_private\_internet\_access](#input\_enable\_private\_internet\_access) | [Optional] Should non-public instance be able to access the Internet via a NAT instance. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | [Optional] The root name for the Project. | `string` | `"Awesome Project!"` | no |
| <a name="input_network_bits"></a> [network\_bits](#input\_network\_bits) | [Optional] The number of network bits to be allocated | `number` | `8` | no |
| <a name="input_network_cidr_range"></a> [network\_cidr\_range](#input\_network\_cidr\_range) | [Optional] The Primary Region to run operations and build within. | `string` | `"10.0.0.0/8"` | no |
| <a name="input_region"></a> [region](#input\_region) | [Required] The Region to run operations and build within. | `string` | `"eu-west-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | [Optional] Extra Tags to add to your stack. | `map` | <pre>{<br>  "enviroment": "alpha"<br>}</pre> | no |
| <a name="input_tiers"></a> [tiers](#input\_tiers) | [Optional] How many uniform tiers to create, use 'public' to create a public tier. | `list(string)` | <pre>[<br>  "public",<br>  "data",<br>  "mid"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_NAT_Gateway_IP"></a> [NAT\_Gateway\_IP](#output\_NAT\_Gateway\_IP) | n/a |
| <a name="output_Network_Allocation"></a> [Network\_Allocation](#output\_Network\_Allocation) | How the Network was divided |
| <a name="output_Subnets"></a> [Subnets](#output\_Subnets) | How the Network was divided |
| <a name="output_VPC_ID"></a> [VPC\_ID](#output\_VPC\_ID) | How the Network was divided |
