# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  count  = var.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.vpc
  tags   = merge({ name = "${var.name}-igw-${var.region}${local.abcs[count.index]}" }, var.tags)
}
