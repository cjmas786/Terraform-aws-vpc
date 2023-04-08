


# -------------- Shared servicves  Vpc resource --------------------

resource "aws_vpc" "main" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}



#----------------- Shared services Private Subnet ------------------------

resource "aws_subnet" "private" {
  count             = 9
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_block[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name = var.subnet_name_map[var.subnet_cidr_block[count.index]]
  }
}

