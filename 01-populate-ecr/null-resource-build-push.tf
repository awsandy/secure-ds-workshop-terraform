resource "null_resource" "build-push" {
  triggers = {
    always_run = timestamp()
  }
  depends_on = [data.aws_ecr_repository.repo]
  provisioner "local-exec" {
    on_failure  = fail
    when        = create
    interpreter = ["/bin/bash", "-c"]
    command     = <<EOT

      set -e

      
      DISPLAY_NAME="Custom TensorFlow v2.4.1 Image"

      aws --profile ${var.profile} --region ${data.aws_region.current.name} ecr get-login-password | docker login --username AWS \
        --password-stdin ${data.aws_ecr_repository.repo.repository_url}
      # Build the docker image and push to Amazon ECR (modify image tags and name as required)
      echo "docker build"
      docker build . -t ${var.image_name} -t ${data.aws_ecr_repository.repo.repository_url}:${var.image_name}
      echo "docker push"
      docker push ${data.aws_ecr_repository.repo.repository_url}:${var.image_name}
      echo "************************************************************************************"

     EOT
  }
}