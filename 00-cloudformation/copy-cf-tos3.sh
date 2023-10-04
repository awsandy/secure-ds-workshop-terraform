if [[ ! -z $C9_PID ]]; then
    export AWS_REGION=$(curl -s 169.254.169.254/latest/dynamic/instance-identity/document | jq -r '.region')
fi
reg=$(aws configure get region)
if [[ -z "$reg" ]]; then
    aws configure set region $AWS_REGION
    reg=$(aws configure get region)
fi
## 
## bucket is created by prior ./package_cloudformation.sh  step
##
buck=$(aws s3 ls | grep secure-data-science-cloudformation | grep $reg | cut -f3 -d ' ')
## sed stuff
if [[ ! -z $buck ]]; then
    sed -i.orig -e "s/secure-data-science-cloudformation-24780-eu-west-2/$buck/g" ds_environment-tf.yaml
    sed -i.orig -e "s/secure-data-science-cloudformation-24780-eu-west-2/$buck/g" c1edf71b7274c2a72ca89d61f3de202d-tf.template
    sed -i.orig -e "s/secure-data-science-cloudformation-24780-eu-west-2N/$buck/g" ds_env_studio_user_profile_v1-tf.yaml

    aws ssm put-parameter --name ds-s3-cloudformation-bucket --value $buck --type String --overwrite
    aws s3 cp ds_environment-tf.yaml s3://$buck/quickstart/ds_environment-tf.yaml
    aws s3 cp c1edf71b7274c2a72ca89d61f3de202d-tf.template s3://$buck/quickstart/c1edf71b7274c2a72ca89d61f3de202d-tf.template
    aws s3 cp ds_env_studio_user_profile_v1-tf.yaml s3://$buck/quickstart/ds_env_studio_user_profile_v1-tf.yaml
fi
