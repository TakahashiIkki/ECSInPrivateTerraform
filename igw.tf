# terraform import aws_internet_gateway.igw igw-**
resource "aws_internet_gateway" "igw" {
  tags = {
    Name = "ikkitang-staging-igw"
  }

  tags_all = {
    Name = "ikkitang-staging-igw"
  }

  vpc_id = aws_vpc.SampleVPC.id
}
