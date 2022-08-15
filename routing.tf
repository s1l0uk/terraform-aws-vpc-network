# # Create Route Table
# resource "aws_route_table" "web-rt" {
#   vpc_id = aws_vpc.vpc
#   dynamic "route" {
#     for_each local.routes
#     content {
# 
#       route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = aws_internet_gateway.igw.id
#       }
#       tags = {
#         merge({Name = ""},var.tags)
#       }
#     }
#   }
# }
# 
# # Create Web Subnet association with Web route table
# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.web-subnet-1.id
#   route_table_id = aws_route_table.web-rt.id
# }
# 
# resource "aws_route_table_association" "b" {
#   subnet_id      = aws_subnet.web-subnet-2.id
#   route_table_id = aws_route_table.web-rt.id
# }
