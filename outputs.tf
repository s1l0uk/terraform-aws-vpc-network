output "NAT_Gateway_IP" {
  value = aws_nat_gateway.nat_gateway.*.public_ip
}

output "VPC_ID" {
  description = "How the Network was divided"
  value       = aws_vpc.vpc.id
}

output "Network_Allocation" {
  description = "How the Network was divided"
  value       = module.subnet_addrs
}

output "Subnets" {
  description = "How the Network was divided"
  value       = aws_subnet.subnets
}
