# Create Route Table
resource "aws_route_table" "public" {
  count  = local.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw[0].id
  }
  tags = merge({ Name = "${var.name}-public-rt" }, var.tags)
}

resource "aws_route_table" "private_internet" {
  count  = var.enable_private_internet_access ? length(var.availability_zones) : 0
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway[count.index].id
  }
  tags = merge(
      { Name = "${[ for n in module.subnet_addrs.networks : n.name if length(regexall("public", n.name)) == 0 ][count.index]}-public-${var.region}" },
      var.tags
      )

}

resource "aws_route_table_association" "public" {
  for_each       = local.enable_internet_gateway == true ? aws_subnet.public_subnets : {}
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public[0].id
}

resource "aws_route_table_association" "internet_access" {
  for_each       = var.enable_private_internet_access == true ? aws_subnet.subnets : {}
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private_internet[
    index(
      var.availability_zones, split("-", each.value.tags_all.Name)[0]
    )
  ].id
}
