resource "null_resource" "art-repo" {
  triggers = {
    always_run = timestamp()
  }
  #depends_on = [aws_eks_cluster.cluster]
  provisioner "local-exec" {
    on_failure  = fail
    when        = create
    interpreter = ["/bin/bash", "-c"]
    command     = <<EOT

        set -e #-x

        dm=${var.art-domain}
        echo $dm
        own=${data.aws_caller_identity.current.account_id}
        echo $own
        rep=${var.ds-public-upstream-repo}
        echo $rep
        ext=${var.external-conn}
        echo $ext
        prf=${var.profile}
        rg=${data.aws_region.current.name}
        echo $prf 
        echo $rg
      
        

        aws --profile ${var.profile} --region ${data.aws_region.current.name} codeartifact associate-external-connection \
        --domain ${var.art-domain} \
        --domain-owner ${data.aws_caller_identity.current.account_id} \
        --repository ${var.ds-public-upstream-repo} \
        --external-connection ${var.external-conn}

        

        # Login to CodeArtifact which will setup pip.conf in $HOME/.config/pip/pip.conf
        aws --profile ${var.profile} --region ${data.aws_region.current.name} codeartifact login --tool pip \
        --domain ${var.art-domain} \
        --domain-owner ${data.aws_caller_identity.current.account_id} \
        --repository ${var.ds-shared-repo}

        pip3 uninstall awswrangler stepfunctions smdebug shap sagemaker-experiments -y
        pip3 uninstall numpy pandas protobuf pyarrow scikit-learn scipy psycopg2-binary xgboost -y

        # Install pip packages, this will download and cache pip packages in CodeArtifact shared repo
        
        pip3 install --no-cache-dir --user awswrangler==2.9.0 stepfunctions==2.2.0 smdebug==1.0.10 shap==0.39.0 sagemaker-experiments==0.1.33
        pip3 install --no-cache-dir --user \
        --only-binary=:all: \
        numpy==1.20.3 pandas==1.2.5 protobuf==3.17.3 pyarrow==4.0.1 scikit-learn==0.24.2 scipy==1.7.0 psycopg2-binary xgboost==1.4.2

        

        # Disassociate external public PyPI connection to restrict package download from public PYPI repo.
        # AWS CodeArtifact service as of this writing by default will download packages from public PYPI repo
        # if an external connection exists.
        # The connection can be associated again to install new packages in the shared repo by using:
        # aws codeartifact associate-external-connection
        aws --profile ${var.profile} --region ${data.aws_region.current.name} codeartifact disassociate-external-connection \
        --domain ${var.art-domain} \
        --domain-owner ${data.aws_caller_identity.current.account_id} \
        --repository ${var.ds-public-upstream-repo} \
        --external-connection ${var.external-conn}

        echo "************************************************************************************"

     EOT
  }
}