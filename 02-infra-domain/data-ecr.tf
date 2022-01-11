data "aws_ecr_repository" "ds-shared-container-images" {
  name = var.ecr_repo
}
