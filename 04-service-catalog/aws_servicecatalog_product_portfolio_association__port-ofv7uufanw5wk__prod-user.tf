# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_servicecatalog_product_portfolio_association.port-ofv7uufanw5wk__prod-7ctv6h6352ws2:
resource "aws_servicecatalog_product_portfolio_association" "port-ofv7uufanw5wk__user" {
  accept_language = "en"
  portfolio_id    = aws_servicecatalog_portfolio.port-ofv7uufanw5wk.id
  product_id      = aws_servicecatalog_product.prod-pljydfz2ff7ys__port-ofv7uufanw5wk.id
}
