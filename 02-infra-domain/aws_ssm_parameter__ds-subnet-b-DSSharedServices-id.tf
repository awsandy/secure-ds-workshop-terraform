# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_ssm_parameter.ds-subnet-b-DSSharedServices-id:
resource "aws_ssm_parameter" "ds-subnet-b-DSSharedServices-id" {
  data_type   = "text"
  description = "Private Subnet-B ID"
  name        = "ds-subnet-b-DSSharedServices-id"
  tags = {
    "Name" = "ds-vpc-DSSharedServices"
  }
  tags_all = {
    "Name" = "ds-vpc-DSSharedServices"
  }
  tier  = "Standard"
  type  = "String"
  value = aws_subnet.subnet-05a180294ca109595.id
}