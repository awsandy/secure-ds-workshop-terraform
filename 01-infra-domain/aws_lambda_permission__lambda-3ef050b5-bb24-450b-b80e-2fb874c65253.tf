
# aws_lambda_permission.lambda-3ef050b5-bb24-450b-b80e-2fb874c65253:
resource "aws_lambda_permission" "lambda-3ef050b5-bb24-450b-b80e-2fb874c65253" {
    action         = "lambda:InvokeFunction"
function_name = aws_lambda_function.SageMakerVPCEnforcer.arn
    principal      = "s3.amazonaws.com"
    source_account = data.aws_caller_identity.current.account_id
    source_arn     = aws_s3_bucket.ds-data-lake-029e33c5a105.arn
    statement_id   = "lambda-3ef050b5-bb24-450b-b80e-2fb874c65253"
}
