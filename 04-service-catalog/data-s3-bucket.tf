


data "aws_s3_bucket" "mybucket" {
  #bucket = data.external.bucket_name.result.Name
  bucket=data.aws_ssm_parameter.cf-buck.value
}


data "aws_ssm_parameter" "cf-buck" {
  name = "ds-s3-cloudformation-bucket"
}

