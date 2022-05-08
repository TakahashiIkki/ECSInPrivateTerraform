# terraform import aws_ecr_repository.sample dev/sample_yargs
resource "aws_ecr_repository" "sample" {
  name = "dev/sample_yargs"
}

# terraform import aws_ecr_lifecycle_policy.sample dev/sample_yargs
resource "aws_ecr_lifecycle_policy" "sample" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "image delete rule",
      "rulePriority": 1,
      "selection": {
        "countNumber": 3,
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = aws_ecr_repository.sample.name
}
