# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group_rule.sg-0b49e7f1e576d908d_egress_1:
resource "aws_security_group_rule" "sg-0b49e7f1e576d908d_egress_1" {
  cidr_blocks = [
    "0.0.0.0/0",
  ]
  from_port         = 0
  prefix_list_ids   = []
  protocol          = "-1"
  security_group_id = aws_security_group.sg-0b49e7f1e576d908d.id
  to_port           = 0
  type              = "egress"
}