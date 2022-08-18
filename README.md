# terraform-aws-vpc-network

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| subnet\_addrs | hashicorp/subnets/cidr | n/a |

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
| availability\_zones | [Optional] A list of Availability zones to operate in. | `list(string)` | <pre>[<br>  "a",<br>  "b",<br>  "c"<br>]</pre> | no |
| enable\_private\_internet\_access | [Optional] Should non-public instance be able to access the Internet via a NAT instance. | `bool` | `true` | no |
| name | [Optional] The root name for the Project. | `string` | `"Awesome Project!"` | no |
| network\_bits | [Optional] The number of network bits to be allocated | `number` | `8` | no |
| network\_cidr\_range | [Optional] The Primary Region to run operations and build within. | `string` | `"10.0.0.0/8"` | no |
| region | [Required] The Region to run operations and build within. | `string` | `"eu-west-1"` | no |
| tags | [Optional] Extra Tags to add to your stack. | `map` | <pre>{<br>  "enviroment": "alpha"<br>}</pre> | no |
| tiers | [Optional] How many uniform tiers to create, use 'public' to create a public tier. | `list(string)` | <pre>[<br>  "public",<br>  "data",<br>  "mid"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| NAT\_Gateway\_IP | n/a |
| Network\_Allocation | How the Network was divided |
| Subnets | How the Network was divided |
| VPC\_ID | How the Network was divided |
