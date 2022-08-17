locals {
  tiers = flatten([
    for tier in var.tiers : [
      for az in var.availability_zones : "${az}-${tier}"
    ]
  ])
}

