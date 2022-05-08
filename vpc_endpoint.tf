# terraform import aws_vpc_endpoint.dkr vpc-**
resource "aws_vpc_endpoint" "dkr" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.ecr.dkr"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-ecr-dkr"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-ecr-dkr"
  }
}

# terraform import aws_vpc_endpoint.ecr-api vpc-**
resource "aws_vpc_endpoint" "ecr-api" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.ecr.api"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-ecr-api"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-ecr-api"
  }
}

# terraform import aws_vpc_endpoint.secretsmanager vpce-**
resource "aws_vpc_endpoint" "secretsmanager" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.secretsmanager"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-secretsmanager"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-secretsmanager"
  }
}

# terraform import aws_vpc_endpoint.logs vpce-**
resource "aws_vpc_endpoint" "logs" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.logs"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-logs"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-logs"
  }
}

# terraform import aws_vpc_endpoint.ssm vpce-**
resource "aws_vpc_endpoint" "ssm" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.ssm"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-ssm"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-ssm"
  }
}

# terraform import aws_vpc_endpoint.sqs vpce-**
resource "aws_vpc_endpoint" "sqs" {
  vpc_id              = aws_vpc.SampleVPC.id
  service_name        = "com.amazonaws.ap-northeast-1.sqs"
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  tags = {
    Name = "ikkitang-staging-vpce-sqs"
  }
  tags_all = {
    Name = "ikkitang-staging-vpce-sqs"
  }
}
