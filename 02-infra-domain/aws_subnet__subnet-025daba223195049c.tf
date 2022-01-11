# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-025daba223195049c:
resource "aws_subnet" "subnet-025daba223195049c" {
  assign_ipv6_address_on_creation = false

  availability_zone       = format("%sa", data.aws_region.current.name)
  cidr_block              = "10.2.1.0/24"
  map_public_ip_on_launch = false
  tags = {
    "Name" = "ds-subnet-a-DSSharedServices"
  }
  tags_all = {
    "Name" = "ds-subnet-a-DSSharedServices"
  }
  vpc_id = aws_vpc.vpc-02dd2936ab232ef7e.id

  timeouts {}
}