# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.subnet-05a180294ca109595__rtbassoc-0736a7a8758370553:
resource "aws_route_table_association" "subnet-05a180294ca109595__rtbassoc-0736a7a8758370553" {
  route_table_id = aws_route_table.rtb-03041a7bb551a299c.id
  subnet_id      = aws_subnet.subnet-05a180294ca109595.id
}