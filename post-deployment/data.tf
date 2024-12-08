data "aws_caller_identity" "current" {}

data "aws_s3_bucket" "primary" {
  bucket = format("%s-%s-%s", var.bucket_prefix_name, data.aws_caller_identity.current.account_id, var.region_primary)
}

data "aws_s3_bucket" "secondary" {
  provider = aws.secondary
  bucket   = format("%s-%s-%s", var.bucket_prefix_name, data.aws_caller_identity.current.account_id, var.region_secondary)
}