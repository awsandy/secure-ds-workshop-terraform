# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_ssm_parameter.ds-s3-endpoint-DSSharedServices-id:
resource "aws_ssm_parameter" "ds-s3-endpoint-DSSharedServices-id" {
  data_type   = "text"
  description = "S3 VPC Endpoint ID"
  name        = "ds-s3-endpoint-DSSharedServices-id"
  tags = {
    "Name" = "ds-vpc-DSSharedServices"
  }
  tags_all = {
    "Name" = "ds-vpc-DSSharedServices"
  }
  tier  = "Standard"
  type  = "String"
  value = aws_vpc_endpoint.vpce-0393e175e43e5e2b4.id
}