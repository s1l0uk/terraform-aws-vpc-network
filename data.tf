module "subnet_addrs" {
  source = "hashicorp/subnets/cidr"

  base_cidr_block = var.network_cidr_range
  networks = [for net in local.tiers :
    {
      name     = net
      new_bits = var.network_bits
    }
  ]
}
