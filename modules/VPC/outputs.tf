output "vpc_id" {
  value = aws_vpc.vpc.id
}
 
output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}
 
output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnet"
  value       = aws_subnet.public
}

output "vpc_private_subnets" {
  description = "IDs of the VPC's private subnet"
  value       = aws_subnet.private
}
