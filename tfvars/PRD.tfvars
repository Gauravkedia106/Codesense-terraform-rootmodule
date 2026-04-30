####################################
# Global Settings
####################################
aws_region  = "us-east-1"
app_version = "v1.0.0"

####################################
# Name Prefix this Inputs are taken by locals.tf
####################################
project = "codesenseai"
environment = "prd"
client = "emami"

####################################
# S3 ABAP Bucket Inputs
####################################
abapbucket_s3_notification = true
abapbucket_static_hosting  = false

####################################
# S3 Frontend Bucket Inputs
####################################
uibucket_s3_notification = false
uibucket_static_hosting  = true

####################################
# SQS Main Queue Inputs
####################################
main_delay_seconds              = 0
main_max_message_size           = 1024
main_message_retention_seconds  = 172800
main_receive_wait_time_seconds  = 10
main_visibility_timeout_seconds = 850
main_sqs_managed_sse_enabled    = true
main_source_service             = "s3.amazonaws.com"

####################################
# SQS Dead Letter Queue (DLQ) Inputs
####################################
dlq_delay_seconds              = 0
dlq_max_message_size           = 1024
dlq_message_retention_seconds  = 172800
dlq_receive_wait_time_seconds  = 10
dlq_visibility_timeout_seconds = 850
dlq_sqs_managed_sse_enabled    = true
dlq_source_service             = "lambda.amazonaws.com"

####################################
# IAM Role Inputs
####################################


####################################
# Analyzer Lambda Inputs
####################################
analyzer_runtime       = "python3.14"
analyzer_architectures = ["x86_64"]
analyzer_handler       = "lambda_function.lambda_handler"
analyzer_timeout       = 850
analyzer_memory_size   = 128

# Analyzer Lambda Source Code
analyzer_lambda_sourcecode_bucket   = "emami-lambda-codes"
analyzer_lambda_sourcecode_filename = "prd/analyzer_lambda_v1.0.0.zip"

####################################
# API Lambda Inputs
####################################
api_runtime       = "python3.13"
api_architectures = ["x86_64"]
api_handler       = "lambda_function.lambda_handler"
api_timeout       = 60
api_memory_size   = 128

# API Lambda Source Code
api_lambda_sourcecode_bucket   = "emami-lambda-codes"
api_lambda_sourcecode_filename = "prd/api_lambda_v1.0.0.zip"

####################################
# DynamoDB Manifest Table Inputs
####################################
manifest_ddb_billing_mode  = "PAY_PER_REQUEST"
manifest_ddb_hashkey       = "id"
manifest_ddb_attributename = "id"
manifest_ddb_attributetype = "S"
manifest_enable_ddb_backup = false

####################################
# DynamoDB Index Table Inputs
####################################
index_ddb_billing_mode  = "PAY_PER_REQUEST"
index_ddb_hashkey       = "id"
index_ddb_attributename = "id"
index_ddb_attributetype = "S"
index_enable_ddb_backup = false

####################################
# REST API Inputs
####################################
stage_name   = "v1"

####################################
# Cognito User Pool Inputs
####################################
enable_mfa              = true
