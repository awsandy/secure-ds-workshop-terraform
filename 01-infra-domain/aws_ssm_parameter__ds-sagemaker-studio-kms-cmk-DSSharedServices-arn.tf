# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_ssm_parameter.ds-s3-data-lake-kms-cmk-DSSharedServices-arn:
resource "aws_ssm_parameter" "ds-sagemaker-studio-kms-cmk-DSSharedServices-arn" {
  data_type   = "text"
  description = "Sagemaker Studio key arn"
  name        = "ds-sagemaker-studio-kms-cmk-DSSharedServices-arn"
  tags        = {}
  tags_all    = {}
  tier        = "Standard"
  type        = "String"
  value       = aws_kms_key.k_f5aba863-306d-4bad-8f9a-6486722726a6.arn
}
