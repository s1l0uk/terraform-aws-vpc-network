locals {
  enable_internet_gateway =  length([ for net in regexall("public", aws_subnet.subnets)]) > 0 ? true : false
  tiers = flatten([
    for tier in var.tiers : [
      for az in var.availability_zones : "${az}-${tier}"
    ]
  ])
}

