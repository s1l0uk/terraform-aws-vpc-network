# Create Subnets from Data
resource "aws_subnet" "subnets" {
  for_each                = {
    for k, v in module.subnet_addrs.network_cidr_blocks : k => v
    if length(regexall("public", k)) == 0
  }
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value
  availability_zone       = "${var.region}${split("-", each.key)[0]}"
  map_public_ip_on_launch = false
  tags                    = merge({ Name = "${each.key}-subnet-${var.region}" }, var.tags)
}

resource "aws_subnet" "public_subnets" {
  for_each                = {
    for k, v in module.subnet_addrs.network_cidr_blocks : k => v
    if length(regexall("public", k)) > 0
  }
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value
  availability_zone       = "${var.region}${split("-", each.key)[0]}"
  map_public_ip_on_launch = true
  tags                    = merge({ Name = "${each.key}-subnet-${var.region}" }, var.tags)
}
