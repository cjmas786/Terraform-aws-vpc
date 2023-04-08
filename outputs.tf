output "vpc_id" {
  description: "Vpc id for shared services Vpc"
  value = aws_vpc.main.id   
}

output "vpc_arn" {
  description: "Vpc Arn for shared services Vpc"
  value = aws_vpc.main.arn
}

output "vpc_cidr_block" {
  description: "Vpc cidr_block for shared services Vpc"
  value = aws_vpc.main.cidr_block
}

output "subnet_details" {
  description: "Subnet details like name, cidr _block, Az, id for all 9 sharedservices private subnets"
  value = [
    for index, subnet in aws_subnet.private : {
      name = var.subnet_name_map[subnet.cidr_block]
      cidr_block = subnet.cidr_block
      availability_zone = subnet.availability_zone
      subnet_id = subnet.id
      
    }
  ]
}

