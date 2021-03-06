# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_ssm_parameter.ds-s3-data-lake-bucket-DSSharedServices:
resource "aws_ssm_parameter" "ds-s3-data-lake-bucket-DSSharedServices" {
  data_type   = "text"
  description = "Shared S3 data lake bucket name for data science teams."
  name        = "ds-s3-data-lake-bucket-DSSharedServices"
  tags        = {}
  tags_all    = {}
  tier        = "Standard"
  type        = "String"
  value       = aws_s3_bucket.ds-data-lake-029e33c5a105.bucket
}
