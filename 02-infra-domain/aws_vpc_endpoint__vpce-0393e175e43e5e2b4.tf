# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpc_endpoint.vpce-0393e175e43e5e2b4:
resource "aws_vpc_endpoint" "vpce-0393e175e43e5e2b4" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "s3:GetObject",
            "s3:PutObject",
            "s3:ListBucket",
          ]
          Effect    = "Allow"
          Principal = "*"
          Resource = [
            "arn:aws:s3:::ds-model-bucket-*",
            "arn:aws:s3:::ds-data-bucket-*",
            "arn:aws:s3:::ds-model-bucket-*/*",
            "arn:aws:s3:::ds-data-bucket-*/*",
            "arn:aws:s3:::*ds-data-lake*",
            "arn:aws:s3:::*ds-data-lake*/*",
          ]
        },
        {
          Action    = "s3:GetObject"
          Effect    = "Allow"
          Principal = "*"
          Resource  = format("arn:aws:s3:::assets-438097961670-%s/*", data.aws_region.current.name)
          Sid       = "S3PolicyForCodeArtifact"
        },
        {
          Action    = "s3:GetObject"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "arn:aws:s3:::prod-eu-west-2-starport-layer-bucket/*"
          Resource  = format("arn:aws:s3:::prod-%s-starport-layer-bucket/*", data.aws_region.current.name)
          Sid       = "S3AccessToEcrSpecificBucket"
        },
      ]
      Version = "2012-10-17"
    }
  )
  private_dns_enabled = false
  route_table_ids = [
    aws_route_table.rtb-03041a7bb551a299c.id,
  ]
  security_group_ids = []
  service_name       = format("com.amazonaws.%s.s3", data.aws_region.current.name)
  subnet_ids         = []
  tags               = {}
  tags_all           = {}
  vpc_endpoint_type  = "Gateway"
  vpc_id             = aws_vpc.vpc-02dd2936ab232ef7e.id

  timeouts {}
}