# terraform import aws_subnet.SampleVPC-Public-1a subnet-***
resource "aws_subnet" "SampleVPC-Public-1a" {
  vpc_id     = aws_vpc.SampleVPC.id
  cidr_block = "10.0.0.0/20"

  tags = {
    Name = "ikkitang-staging-subnet-public1-ap-northeast-1a"
  }

  tags_all = {
    Name = "ikkitang-staging-subnet-public1-ap-northeast-1a"
  }

}

# terraform import aws_subnet.SampleVPC-Private-1a subnet-**
resource "aws_subnet" "SampleVPC-Private-1a" {
  vpc_id     = aws_vpc.SampleVPC.id
  cidr_block = "10.0.128.0/20"

  tags = {
    Name = "ikkitang-staging-subnet-private1-ap-northeast-1a"
  }

  tags_all = {
    Name = "ikkitang-staging-subnet-private1-ap-northeast-1a"
  }

}
