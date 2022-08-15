# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.network_cidr_range
  tags       = merge({ name = "${var.name}-${var.region}-vpc" }, var.tags)
}
