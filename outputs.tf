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

output "RouteTable" {
  description = "Route Table Information to add as needed"
  value       =  aws_route_table
}

output "RouteAssociation" {
  description = "Route Table Information to add as needed"
  value       = aws_route_table_association
}
