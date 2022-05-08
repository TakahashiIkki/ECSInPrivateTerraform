# terraform import aws_default_network_acl.main acl-**
resource "aws_default_network_acl" "main" {
  default_network_acl_id = aws_vpc.SampleVPC.default_network_acl_id

  subnet_ids = [
    aws_subnet.SampleVPC-Private-1a.id,
    aws_subnet.SampleVPC-Public-1a.id
  ]

  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

}
