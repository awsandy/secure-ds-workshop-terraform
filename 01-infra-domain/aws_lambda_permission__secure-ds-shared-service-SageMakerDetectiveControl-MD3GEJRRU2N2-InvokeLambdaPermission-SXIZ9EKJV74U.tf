
# aws_lambda_permission.secure-ds-shared-service-SageMakerDetectiveControl-MD3GEJRRU2N2-InvokeLambdaPermission-SXIZ9EKJV74U:
resource "aws_lambda_permission" "secure-ds-shared-service-SageMakerDetectiveControl-MD3GEJRRU2N2-InvokeLambdaPermission-SXIZ9EKJV74U" {
    action        = "lambda:InvokeFunction"
function_name = aws_lambda_function.SageMakerVPCEnforcer.arn
    principal     = "events.amazonaws.com"
    source_arn    = aws_cloudwatch_event_rule.default__SageMakerVPCEnforcementRule.arn
    statement_id  = "secure-ds-shared-service-SageMakerDetectiveControl-MD3GEJRRU2N2-InvokeLambdaPermission-SXIZ9EKJV74U"
}
