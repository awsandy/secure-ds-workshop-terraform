# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpc_endpoint.vpce-0478cd54a64ca0467:
resource "aws_vpc_endpoint" "vpce-0478cd54a64ca0467" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "codeartifact:Describe*",
            "codeartifact:Get*",
            "codeartifact:List*",
            "codeartifact:ReadFromRepository",
          ]
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.sg-0b49e7f1e576d908d.id,
  ]
 
  service_name = format("com.amazonaws.%s.codeartifact.repositories",data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.subnet-025daba223195049c.id,
    aws_subnet.subnet-05a180294ca109595.id,
    aws_subnet.subnet-0df410c038106cda9.id,
  ]
  tags              = {}
  tags_all          = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.vpc-02dd2936ab232ef7e.id

  timeouts {}
}
