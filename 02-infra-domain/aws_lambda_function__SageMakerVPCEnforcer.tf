
# aws_lambda_function.SageMakerVPCEnforcer:
resource "aws_lambda_function" "SageMakerVPCEnforcer" {
  architectures = [
    "x86_64",
  ]
  description   = "Detective control to enforce VPC attachment of SageMaker resources"
  function_name = "SageMakerVPCEnforcer"
  handler       = "inspect_sagemaker_resource.lambda_handler"
  lifecycle {
    ignore_changes = [filename]
  }
  filename                       = "SageMakerVPCEnforcer.zip"
  layers                         = []
  memory_size                    = 320
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf.arn
  runtime                        = "python3.8"
  source_code_hash               = filebase64sha256("SageMakerVPCEnforcer.zip")
  tags                           = {}
  tags_all                       = {}
  timeout                        = 180

  timeouts {}

  tracing_config {
    mode = "PassThrough"
  }
}
