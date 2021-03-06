# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role_policy.DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf__LambdaInlineForSageMaker:
resource "aws_iam_role_policy" "DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf__LambdaInlineForSageMaker" {
  name = "LambdaInlineForSageMaker"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "sagemaker:DeleteTags",
            "sagemaker:DeleteEndpointConfig",
            "sagemaker:ListTags",
            "sagemaker:ListTransformJobs",
            "sagemaker:StopTrainingJob",
            "sagemaker:DeleteModel",
            "sagemaker:ListTrainingJobs",
            "sagemaker:ListHyperParameterTuningJobs",
            "sagemaker:DeleteEndpoint",
            "sagemaker:ListModels",
            "sagemaker:StopTransformJob",
            "sagemaker:AddTags",
            "sagemaker:ListEndpoints",
          ]
          Effect   = "Allow"
          Resource = "*"
          Sid      = "VisualEditor0"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf.id
}
