# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  count  = local.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.vpc.id
  tags   = merge({ Name = "${var.name}-igw-${var.region}" }, var.tags)
}
