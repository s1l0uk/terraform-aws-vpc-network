output "NAT_Gateway_IP" {
  value = aws_nat_gateway.nat_gateway.*.public_ip
}

output "VPC_ID" {
  description = "How the Network was divided"
  value       = aws_vpc.vpc.id
}

output "VPC" {
  description = "How the Network was divided"
  value       = aws_vpc.vpc
}

output "Network_Allocation" {
  description = "How the Network was divided"
  value       = module.subnet_addrs
}

output "Subnets" {
  description = "How the Network was divided"
  value       = aws_subnet.subnets
}

output "PublicSubnets" {
  description = "How the Network was divided"
  value       = aws_subnet.public_subnets
}

output "RouteTablePrivateInternet" {
  description = "Route Table Information to add as needed"
  value       =  aws_route_table.private_internet
}

output "RouteTablePublic" {
  description = "Route Table Information to add as needed"
  value       =  aws_route_table.public
}

output "RouteAssociationPrivate" {
  description = "Route Table Information to add as needed"
  value       = aws_route_table_association.internet_access
}

output "RouteAssociationPubilc" {
  description = "Route Table Information to add as needed"
  value       = aws_route_table_association.public
}
