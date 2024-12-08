project_name = "sales-workload"

region = "sa-east-1"

bucket_prefix_name = "sales-offload-datalake"

sqs_processing_sales_config = {
  queue_name                    = "sales-processing"
  delay_seconds                 = 0
  max_message_size              = 262144
  message_retention_seconds     = 86400
  receive_wait_time_seconds     = 10
  visibility_timeout_seconds    = 60
  dlq_redrive_max_receive_count = 4
}