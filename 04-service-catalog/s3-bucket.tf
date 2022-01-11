data "external" "bucket_name" {
  program = ["bash", "get-bucket-name.sh"]
}

output "Name" {
  value = data.external.bucket_name.result.Name
}

data "aws_s3_bucket" "mybucket" {
  bucket = data.external.bucket_name.result.Name
}

#resource "aws_s3_bucket" "mybucket" {
#  bucket = data.external.bucket_name.result.Name
#  #bucket = format("%s-%s",var.bucket-name,var.region)
#
#  server_side_encryption_configuration {
#    rule {
#      apply_server_side_encryption_by_default {
#        sse_algorithm     = "AES256"
#      }
#    }
#  }
#}