resource "aws_eip" "eip" {
  count = var.enable_private_internet_access ? length(
    [ for n in module.subnet_addrs.networks : n.name if length(regexall("public", n.name)) > 0 ]
  ) : 0
  vpc   = true
}

resource "aws_nat_gateway" "nat_gateway" {
  count         = var.enable_private_internet_access ? length(aws_eip.eip) : 0
  allocation_id = aws_eip.eip[count.index].id
  subnet_id     = compact([
    for net in aws_subnet.public_subnets : var.enable_private_internet_access ? net.id : null
  ])[count.index]
  tags          = merge(
    { 
      Name = "${[ for n in module.subnet_addrs.networks : n.name if length(regexall("public", n.name)) > 0 ][count.index]}-nat-${var.region}"
    },
    var.tags
  )
  depends_on    = [aws_internet_gateway.igw]
}
