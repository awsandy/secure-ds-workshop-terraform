# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_codeartifact_repository.ds-shared-repo:
resource "aws_codeartifact_repository" "ds-shared-repo" {
  description  = "Shared asset repository to host python package and modules for data science projects"
  depends_on=[aws_codeartifact_repository.ds-public-upstream-repo]
  domain       = aws_codeartifact_domain.ds-domain.domain
  domain_owner = data.aws_caller_identity.current.account_id
  repository   = "ds-shared-repo"
  tags         = {}
  tags_all     = {}

  upstream {
    repository_name = aws_codeartifact_repository.ds-public-upstream-repo.repository
  }
}
