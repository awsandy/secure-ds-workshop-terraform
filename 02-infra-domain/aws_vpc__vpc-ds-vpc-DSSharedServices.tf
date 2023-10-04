# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpc.vpc-02dd2936ab232ef7e:
resource "aws_vpc" "vpc-02dd2936ab232ef7e" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.2.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy                 = "default"
  tags = {
    "Name" = "ds-vpc-DSSharedServices"
  }
  tags_all = {
    "Name" = "ds-vpc-DSSharedServices"
  }
}
