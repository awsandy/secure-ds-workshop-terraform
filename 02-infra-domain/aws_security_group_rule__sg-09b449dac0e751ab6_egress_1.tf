# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group_rule.sg-09b449dac0e751ab6_egress_1:
resource "aws_security_group_rule" "sg-09b449dac0e751ab6_egress_1" {
  cidr_blocks = [
    "0.0.0.0/0",
  ]
  from_port         = 0
  prefix_list_ids   = []
  protocol          = "-1"
  security_group_id = aws_security_group.sg-09b449dac0e751ab6.id
  to_port           = 0
  type              = "egress"
}