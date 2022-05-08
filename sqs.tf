# terraform import aws_sqs_queue.sample https://queue.amazonaws.com/**
resource "aws_sqs_queue" "sample" {
  deduplication_scope         = "queue"
  fifo_queue                  = true
  content_based_deduplication = true
  message_retention_seconds   = 1800
  name                        = "sample-queue.fifo"
}
