locals {
  enable_internet_gateway =  length([
    for n in module.subnet_addrs.networks : n.name if length(
      regexall("public", n.name)
    ) > 0
  ]) > 0 ? true : false
  tiers = flatten([
    for tier in var.tiers : [
      for az in var.availability_zones : "${az}-${tier}"
    ]
  ])
}
