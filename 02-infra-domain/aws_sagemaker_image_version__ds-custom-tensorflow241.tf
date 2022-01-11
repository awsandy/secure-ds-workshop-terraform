# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_sagemaker_image_version.ds-custom-tensorflow241:
resource "aws_sagemaker_image_version" "ds-custom-tensorflow241" {
  depends_on=[aws_sagemaker_image.ds-custom-tensorflow241]
  base_image = format("%s:%s", aws_ecr_repository.ds-shared-container-images.repository_url, aws_sagemaker_image.ds-custom-tensorflow241.image_name)
  image_name = aws_sagemaker_image.ds-custom-tensorflow241.image_name
}