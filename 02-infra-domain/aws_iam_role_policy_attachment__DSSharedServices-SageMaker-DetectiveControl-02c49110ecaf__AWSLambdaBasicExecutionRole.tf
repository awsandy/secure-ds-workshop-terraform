# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role_policy_attachment.DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf__AWSLambdaBasicExecutionRole:
resource "aws_iam_role_policy_attachment" "DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf__AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.DSSharedServices-SageMaker-DetectiveControl-02c49110ecaf.id
}
