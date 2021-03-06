# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_ssm_parameter.ds-codeartifact-repository:
resource "aws_ssm_parameter" "ds-codeartifact-repository" {
  data_type   = "text"
  description = "Data Science CodeArtifact Repository Name"
  name        = "ds-codeartifact-repository"
  tags        = {}
  tags_all    = {}
  tier        = "Standard"
  type        = "String"
  value       = aws_codeartifact_repository.ds-shared-repo.repository
}
