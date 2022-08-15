# Create Subnets

resource "aws_subnet" "subnet_public" {
  count                   = length(var.subject_cidr_range_public)
  vpc_id                  = aws_vpc.vpc
  cidr_block              = var.subject_cidr_range_public[count.index]
  availability_zone       = "${var.region}${local.abcs[count.index]}"
  map_public_ip_on_launch = true
  tags                    = merge({ name = "${var.name}-public-subnet-${var.region}${local.abcs[count.index]}" }, var.tags)
}

resource "aws_subnet" "subnet_mid" {
  count                   = length(var.subject_cidr_range_mid)
  vpc_id                  = aws_vpc.vpc
  cidr_block              = var.subject_cidr_range_mid[count.index]
  availability_zone       = "${var.region}${local.abcs[count.index]}"
  map_public_ip_on_launch = false
  tags                    = merge({ name = "${var.name}-mid-subnet-${var.region}${local.abcs[count.index]}" }, var.tags)
}

# Add additional Subnets here and key to variables
# Can Dynamics and Maps be abused here to map ALL subnets...

resource "aws_subnet" "subnet_data" {
  count                   = length(var.subject_cidr_range_data)
  vpc_id                  = aws_vpc.vpc
  cidr_block              = var.subject_cidr_range_data[count.index]
  availability_zone       = "${var.region}${local.abcs[count.index]}"
  map_public_ip_on_launch = false
  tags                    = merge({ name = "${var.name}-data-subnet-${var.region}${local.abcs[count.index]}" }, var.tags)
}
