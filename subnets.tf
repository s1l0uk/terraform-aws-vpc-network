# Create Subnets from Data
resource "aws_subnet" "subnets" {
  for_each                = module.subnet_addrs
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value
  availability_zone       = var.region + split(each.key, "-")[0]
  map_public_ip_on_launch = length(regexall("public", each.key)) > 1 ? true : false
  tags                    = merge({ name = "${each.key}-subnet-${var.region}" }, var.tags)
}
