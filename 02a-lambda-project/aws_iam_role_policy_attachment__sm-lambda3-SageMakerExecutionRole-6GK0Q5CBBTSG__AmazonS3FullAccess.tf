# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role_policy_attachment.sm-lambda3-SageMakerExecutionRole-6GK0Q5CBBTSG__AmazonS3FullAccess:
resource "aws_iam_role_policy_attachment" "sm-lambda3-SageMakerExecutionRole-6GK0Q5CBBTSG__AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = aws_iam_role.sm-lambda3-SageMakerExecutionRole-6GK0Q5CBBTSG.id
}
