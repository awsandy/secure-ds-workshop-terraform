if [[ ! -z $C9_PID ]]; then
    export AWS_REGION=$(curl -s 169.254.169.254/latest/dynamic/instance-identity/document | jq -r '.region')
fi
reg=$(aws configure get region)
if [[ -z "$reg" ]]; then
    aws configure set region $AWS_REGION
    reg=$(aws configure get region)
fi
buck=$(echo "secure-data-science-cloudformation-$reg")
aws s3 mb s3://secure-data-science-cloudformation-$reg --region $reg || true
if [[ ! -z $buck ]]; then
    aws ssm put-parameter --name ds-s3-cloudformation-bucket --value $buck --type String --overwrite
    aws s3 cp ds_environment-tf.yaml s3://$buck/quickstart/ds_environment-tf.yaml
    aws s3 cp c1edf71b7274c2a72ca89d61f3de202d-tf.template s3://$buck/quickstart/c1edf71b7274c2a72ca89d61f3de202d-tf.template
    aws s3 cp ds_env_studio_user_profile_v1-tf.yaml s3://$buck/quickstart/ds_env_studio_user_profile_v1-tf.yaml
fi
