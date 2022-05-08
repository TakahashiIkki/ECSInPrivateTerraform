# terraform import aws_route_table.default rtb-**
resource "aws_route_table" "default" {
  vpc_id = "vpc-07d02add0f1b1f1de"
}

# terraform import aws_route_table.private-1a rtb-**
resource "aws_route_table" "private-1a" {
  tags = {
    Name = "ikkitang-staging-rtb-private1-ap-northeast-1a"
  }

  tags_all = {
    Name = "ikkitang-staging-rtb-private1-ap-northeast-1a"
  }

  vpc_id = aws_vpc.SampleVPC.id
}

# terraform import aws_route_table.public rtb-**
resource "aws_route_table" "public" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "ikkitang-staging-rtb-public"
  }

  tags_all = {
    Name = "ikkitang-staging-rtb-public"
  }

  vpc_id = aws_vpc.SampleVPC.id
}

resource "aws_main_route_table_association" "main" {
  route_table_id = aws_route_table.default.id
  vpc_id         = aws_vpc.SampleVPC.id
}


# terraform import aws_route_table_association.public subnet-**/rtb-**
resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.SampleVPC-Public-1a.id
}

# terraform import aws_route_table_association.private-1a subnet-**/rtb-**
resource "aws_route_table_association" "private-1a" {
  route_table_id = aws_route_table.private-1a.id
  subnet_id      = aws_subnet.SampleVPC-Private-1a.id
}
