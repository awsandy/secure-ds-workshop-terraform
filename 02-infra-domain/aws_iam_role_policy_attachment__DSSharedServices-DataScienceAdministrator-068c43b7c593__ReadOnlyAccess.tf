# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role_policy_attachment.DSSharedServices-DataScienceAdministrator-068c43b7c593__ReadOnlyAccess:
resource "aws_iam_role_policy_attachment" "DSSharedServices-DataScienceAdministrator-068c43b7c593__ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = aws_iam_role.DSSharedServices-DataScienceAdministrator-068c43b7c593.id
}