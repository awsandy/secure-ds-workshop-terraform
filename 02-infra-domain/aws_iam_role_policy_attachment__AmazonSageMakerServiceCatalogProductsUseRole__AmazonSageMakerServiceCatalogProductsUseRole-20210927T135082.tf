# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role_policy_attachment.AmazonSageMakerServiceCatalogProductsUseRole__AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082:
resource "aws_iam_role_policy_attachment" "AmazonSageMakerServiceCatalogProductsUseRole__AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082" {
  policy_arn = aws_iam_policy.AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082.arn
  role       = aws_iam_role.AmazonSageMakerServiceCatalogProductsUseRole.id
}
