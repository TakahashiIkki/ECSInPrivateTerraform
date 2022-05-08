# terraform import aws_security_group.SG_allow-vpc-endpoint sg-***
resource "aws_security_group" "SG_allow-vpc-endpoint" {
  description = "vpc endpoint"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = [
      aws_subnet.SampleVPC-Private-1a.cidr_block
    ]
    description = "from subnet SampleVPC-Private-1a"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "allow-vpc-endpoint"
  vpc_id = aws_vpc.SampleVPC.id
}

# terraform import aws_security_group.SG_ECS sg-***
resource "aws_security_group" "SG_ECS" {
  description = "2022-05-02T14:33:11.740Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = [
      aws_subnet.SampleVPC-Private-1a.cidr_block
    ]
    from_port = "0"
    protocol  = "tcp"
    self      = "false"
    to_port   = "65535"
  }

  name   = "batch-cluster-security-group"
  vpc_id = aws_vpc.SampleVPC.id
}
