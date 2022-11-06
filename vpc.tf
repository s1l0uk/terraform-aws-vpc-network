# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.network_cidr_range
  instance_tenancy = "default"

  enable_dns_support = true
  enable_dns_hostnames = true
  tags       = merge({ Name = "${var.name}-${var.region}-vpc" }, var.tags)
}
