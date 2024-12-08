variable "project_name" {

}

variable "region" {

}

variable "sqs_processing_sales_config" {
  type = object({
    queue_name                    = string
    delay_seconds                 = number
    max_message_size              = number
    message_retention_seconds     = number
    receive_wait_time_seconds     = number
    visibility_timeout_seconds    = number
    dlq_redrive_max_receive_count = number
  })

}

variable "bucket_prefix_name" {
  
}