data "external" "bucket_name" {
  program = ["bash", "get-bucket-name.sh"]
}

output "Name" {
  value = data.external.bucket_name.result.Name
}

data "aws_s3_bucket" "mybucket" {
  bucket = data.external.bucket_name.result.Name
}

