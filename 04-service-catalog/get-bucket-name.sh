#!/bin/bash
# Exit if any of the intermediate steps fail
#set -e
terraform state show data.aws_region.current 2&> /dev/null
if [[ $? -eq 0 ]];then
    treg=$(terraform state show data.aws_region.current | grep name | cut -f2 -d '=' | tr -d ' |"')
else
    if [[ -z $TF_VAR_REGION ]];then
        treg=$(grep tagregion vars.tf | cut -f2 -d '=' | cut -f2 -d '"') 
    else
        treg=$(echo $TF_VAR_REGION)   
fi

#echo $treg $tprof
#t2=`date +%s%N`
#t1=`hostname | cut -f1 -d'.'`
#BUCKET_NAME=`printf "tf-state-%s-%s" $t1 $t2 | awk '{print tolower($0)}'`

BUCKET_NAME=$(aws s3 ls --region $treg | grep secure-data-science-cloudformation- | cut -f3 -d ' ')
jq -n --arg bn "$BUCKET_NAME" '{"Name":$bn}'