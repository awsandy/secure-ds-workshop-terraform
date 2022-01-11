reg=$(aws configure get region)
buck=$(aws s3 ls | grep secure-data-science-cloudformation | grep $reg | cut -f3 -d ' ')
aws s3 cp ds_environment-tf.yaml s3://$buck/quickstart/ds_environment-tf.yaml
aws s3 cp c1edf71b7274c2a72ca89d61f3de202d-tf.template s3://$buck/quickstart/c1edf71b7274c2a72ca89d61f3de202d-tf.template
aws s3 cp  ds_env_studio_user_profile_v1-tf.yaml s3://$buck/quickstart/ds_env_studio_user_profile_v1-tf.yaml