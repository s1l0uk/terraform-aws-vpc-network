resource "aws_eip" "eip" {
  count = var.enable_private_internet_access ? length(regexall("public", aws_subnet.subnets.*.name)) : 0
  vpc   = true
}

resource "aws_nat_gateway" "nat_gateway" {
  count         = length(aws_eip.eip)
  allocation_id = aws_eip.eip[count.index].id
  subnet_id     = compact([for net in regexall("public", aws_subnet.subnets) : var.enable_private_internet_access ? net.id : null])[count.index]
  tags          = merge({ Name = [for net in regexall("public", aws_subnet.subnets) : net.name][count.index] + "-nat-${var.region}" }, var.tags)
  depends_on    = [aws_internet_gateway.igw]
}
