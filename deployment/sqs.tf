resource "aws_sqs_queue" "dlq" {
  name = format("%s-dlq", lookup(var.sqs_processing_sales_config, "queue_name"))

  delay_seconds              = lookup(var.sqs_processing_sales_config, "delay_seconds")
  max_message_size           = lookup(var.sqs_processing_sales_config, "max_message_size")
  message_retention_seconds  = lookup(var.sqs_processing_sales_config, "message_retention_seconds")
  receive_wait_time_seconds  = lookup(var.sqs_processing_sales_config, "receive_wait_time_seconds")
  visibility_timeout_seconds = lookup(var.sqs_processing_sales_config, "visibility_timeout_seconds")
}