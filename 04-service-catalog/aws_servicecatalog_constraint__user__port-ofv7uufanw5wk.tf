# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_servicecatalog_constraint.cons-cwhftleeg7apm__port-ofv7uufanw5wk:
resource "aws_servicecatalog_constraint" "cons-cwhftleeg7apm__port-ofv7uufanw5wk" {
  accept_language = "en"
  description     = "Launch as arn:aws:iam::566972129213:role/DSSharedServices-ServiceCatalogLaunchRole-068c43b7c593"
  parameters = jsonencode(
    {
      RoleArn = data.aws_iam_role.DSSharedServices-ServiceCatalogLaunchRole-068c43b7c593.arn
    }
  )
  portfolio_id = aws_servicecatalog_portfolio.port-ofv7uufanw5wk.id
  product_id   = aws_servicecatalog_product.prod-pljydfz2ff7ys__port-ofv7uufanw5wk.id
  type         = "LAUNCH"
}
