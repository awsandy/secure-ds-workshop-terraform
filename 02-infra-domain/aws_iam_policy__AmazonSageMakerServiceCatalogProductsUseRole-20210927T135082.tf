
# aws_iam_policy.AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082:
resource "aws_iam_policy" "AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082" {
    name      = "AmazonSageMakerServiceCatalogProductsUseRole-20210927T135082"
    path      = "/service-role/"
    policy    = jsonencode(
        {
            Statement = [
                {
                    Action   = [
                        "cloudformation:CreateChangeSet",
                        "cloudformation:CreateStack",
                        "cloudformation:DescribeChangeSet",
                        "cloudformation:DeleteChangeSet",
                        "cloudformation:DeleteStack",
                        "cloudformation:DescribeStacks",
                        "cloudformation:ExecuteChangeSet",
                        "cloudformation:SetStackPolicy",
                        "cloudformation:UpdateStack",
                    ]
                    Effect   = "Allow"
"Resource"= "arn:aws:cloudformation:*:*:stack/sagemaker-*"
                },
                {
                    Action   = [
                        "cloudwatch:PutMetricData",
                    ]
                    Effect   = "Allow"
"Resource"= "*"
                },
                {
                    Action   = [
                        "codebuild:BatchGetBuilds",
                        "codebuild:StartBuild",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:codebuild:*:*:project/sagemaker-*",
                        "arn:aws:codebuild:*:*:build/sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "codecommit:CancelUploadArchive",
                        "codecommit:GetBranch",
                        "codecommit:GetCommit",
                        "codecommit:GetUploadArchiveStatus",
                        "codecommit:UploadArchive",
                    ]
                    Effect   = "Allow"
"Resource"= "arn:aws:codecommit:*:*:sagemaker-*"
                },
                {
                    Action   = [
                        "codepipeline:StartPipelineExecution",
                    ]
                    Effect   = "Allow"
"Resource"= "arn:aws:codepipeline:*:*:sagemaker-*"
                },
                {
                    Action   = [
                        "ec2:DescribeRouteTables",
                    ]
                    Effect   = "Allow"
"Resource"= "*"
                },
                {
                    Action   = [
                        "ecr:BatchCheckLayerAvailability",
                        "ecr:BatchGetImage",
                        "ecr:Describe*",
                        "ecr:GetAuthorizationToken",
                        "ecr:GetDownloadUrlForLayer",
                    ]
                    Effect   = "Allow"
"Resource"= "*"
                },
                {
                    Action   = [
                        "ecr:BatchDeleteImage",
                        "ecr:CompleteLayerUpload",
                        "ecr:CreateRepository",
                        "ecr:DeleteRepository",
                        "ecr:InitiateLayerUpload",
                        "ecr:PutImage",
                        "ecr:UploadLayerPart",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:ecr:*:*:repository/sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "events:DeleteRule",
                        "events:DescribeRule",
                        "events:PutRule",
                        "events:PutTargets",
                        "events:RemoveTargets",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:events:*:*:rule/sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "firehose:PutRecord",
                        "firehose:PutRecordBatch",
                    ]
                    Effect   = "Allow"
"Resource"= "arn:aws:firehose:*:*:deliverystream/sagemaker-*"
                },
                {
                    Action   = [
                        "glue:BatchCreatePartition",
                        "glue:BatchDeletePartition",
                        "glue:BatchDeleteTable",
                        "glue:BatchDeleteTableVersion",
                        "glue:BatchGetPartition",
                        "glue:CreateDatabase",
                        "glue:CreatePartition",
                        "glue:CreateTable",
                        "glue:DeletePartition",
                        "glue:DeleteTable",
                        "glue:DeleteTableVersion",
                        "glue:GetDatabase",
                        "glue:GetPartition",
                        "glue:GetPartitions",
                        "glue:GetTable",
                        "glue:GetTables",
                        "glue:GetTableVersion",
                        "glue:GetTableVersions",
                        "glue:SearchTables",
                        "glue:UpdatePartition",
                        "glue:UpdateTable",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:glue:*:*:catalog",
                        "arn:aws:glue:*:*:database/default",
                        "arn:aws:glue:*:*:database/global_temp",
                        "arn:aws:glue:*:*:database/sagemaker-*",
                        "arn:aws:glue:*:*:table/sagemaker-*",
                        "arn:aws:glue:*:*:tableVersion/sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "iam:PassRole",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:iam::*:role/service-role/AmazonSageMakerServiceCatalogProductsUse*",
                    ]
                },
                {
                    Action   = [
                        "lambda:InvokeFunction",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:lambda:*:*:function:sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "logs:CreateLogDelivery",
                        "logs:CreateLogGroup",
                        "logs:CreateLogStream",
                        "logs:DeleteLogDelivery",
                        "logs:Describe*",
                        "logs:GetLogDelivery",
                        "logs:GetLogEvents",
                        "logs:ListLogDeliveries",
                        "logs:PutLogEvents",
                        "logs:PutResourcePolicy",
                        "logs:UpdateLogDelivery",
                    ]
                    Effect   = "Allow"
"Resource"= "*"
                },
                {
                    Action   = [
                        "s3:CreateBucket",
                        "s3:DeleteBucket",
                        "s3:GetBucketAcl",
                        "s3:GetBucketCors",
                        "s3:GetBucketLocation",
                        "s3:ListAllMyBuckets",
                        "s3:ListBucket",
                        "s3:ListBucketMultipartUploads",
                        "s3:PutBucketCors",
                        "s3:PutObjectAcl",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:s3:::aws-glue-*",
                        "arn:aws:s3:::sagemaker-*",
                    ]
                },
                {
                    Action   = [
                        "s3:AbortMultipartUpload",
                        "s3:DeleteObject",
                        "s3:GetObject",
                        "s3:GetObjectVersion",
                        "s3:PutObject",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:s3:::aws-glue-*",
                        "arn:aws:s3:::sagemaker-*",
                    ]
                },
                {
                    Action      = [
                        "sagemaker:*",
                    ]
                    Effect      = "Allow"
                    NotResource = [
                        "arn:aws:sagemaker:*:*:domain/*",
                        "arn:aws:sagemaker:*:*:user-profile/*",
                        "arn:aws:sagemaker:*:*:app/*",
                        "arn:aws:sagemaker:*:*:flow-definition/*",
                    ]
                },
                {
                    Action   = [
                        "states:DescribeExecution",
                        "states:DescribeStateMachine",
                        "states:DescribeStateMachineForExecution",
                        "states:GetExecutionHistory",
                        "states:ListExecutions",
                        "states:ListTagsForResource",
                        "states:StartExecution",
                        "states:StopExecution",
                        "states:TagResource",
                        "states:UntagResource",
                        "states:UpdateStateMachine",
                    ]
                    Effect   = "Allow"
"Resource"= [
                        "arn:aws:states:*:*:stateMachine:sagemaker-*",
                        "arn:aws:states:*:*:execution:sagemaker-*:*",
                    ]
                },
                {
                    Action   = [
                        "states:ListStateMachines",
                    ]
                    Effect   = "Allow"
"Resource"= "*"
                },
                {
                    Action    = [
                        "codestar-connections:UseConnection",
                    ]
                    Condition = {
                        StringEqualsIgnoreCase = {
"aws:ResourceTag/sagemaker"= "true"
                        }
                    }
                    Effect    = "Allow"
"Resource"= "arn:aws:codestar-connections:*:*:connection/*"
                },
            ]
            Version   = "2012-10-17"
        }
    )
    tags      = {}
    tags_all  = {}
}
