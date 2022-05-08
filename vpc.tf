# terraform import aws_vpc.SampleVPC vpc-***
resource "aws_vpc" "SampleVPC" {
  cidr_block                       = "10.0.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy                 = "default"
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "ikkitang-staging-vpc"
  }

  tags_all = {
    Name = "ikkitang-staging-vpc"
  }
}

output "aws_vpc-SampleVPC-id" {
  value = aws_vpc.SampleVPC.id
}