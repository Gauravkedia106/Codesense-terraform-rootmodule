####################################
# Global Settings
####################################
aws_region  = "us-east-1"
app_version = "v1.0.0"

####################################
# Name Prefix this Inputs are taken by locals.tf
####################################
project = "codesenseai"
environment = "dev"
client = "emami"

####################################
# S3 ABAP Bucket Inputs
####################################
# abapbucket_s3_notification = true
# abapbucket_static_hosting  = false

emamibucket_s3_notification = true
emamibucket_static_hosting  = false

####################################
# S3 Frontend Bucket Inputs
####################################
uibucket_s3_notification = false
uibucket_static_hosting  = true

####################################
# SQS Main Queue Inputs
####################################
# main_delay_seconds              = 0
# main_max_message_size           = 1024
# main_message_retention_seconds  = 172800
# main_receive_wait_time_seconds  = 10
# main_visibility_timeout_seconds = 850
# main_sqs_managed_sse_enabled    = true
# main_source_service             = "s3.amazonaws.com"

####################################
# SQS batch_output ##
##################################
batch_output_delay_seconds              = 0
batch_output_max_message_size           = 1048576
batch_output_message_retention_seconds  = 345600
batch_output_receive_wait_time_seconds  = 0
batch_output_visibility_timeout_seconds = 900
batch_output_sqs_managed_sse_enabled    = true
batch_output_source_service             = "s3.amazonaws.com"


####################################
# SQS batch-queue 
####################################

batch_delay_seconds              = 0
batch_max_message_size           = 1048576
batch_message_retention_seconds  = 345600
batch_receive_wait_time_seconds  = 0
batch_visibility_timeout_seconds = 30
batch_sqs_managed_sse_enabled    = true
batch_source_service             = "s3.amazonaws.com"


####################################
# SQS codesenseai-prd-emami-main-sqs
####################################


main_delay_seconds              = 0
main_max_message_size           = 5120
main_message_retention_seconds  = 172800
main_receive_wait_time_seconds  = 10
main_visibility_timeout_seconds = 850
main_sqs_managed_sse_enabled    = true
main_source_service             = "s3.amazonaws.com"



####################################
# SQS details_queue_codesense
####################################



details_delay_seconds              = 1
details_max_message_size           = 1048576
details_message_retention_seconds  = 345600
details_receive_wait_time_seconds  = 1
details_visibility_timeout_seconds = 30
details_sqs_managed_sse_enabled    = true
details_source_service             = "s3.amazonaws.com"



####################################
# SQS usage_data_queue
####################################

usage_delay_seconds              = 0
usage_max_message_size           = 1048576
usage_message_retention_seconds  = 345600
usage_receive_wait_time_seconds  = 0
usage_visibility_timeout_seconds = 30
usage_sqs_managed_sse_enabled    = true
usage_source_service             = "s3.amazonaws.com"





# ####################################
# # SQS Dead Letter Queue (DLQ) Inputs
# ####################################
# dlq_delay_seconds              = 0
# dlq_max_message_size           = 1024
# dlq_message_retention_seconds  = 172800
# dlq_receive_wait_time_seconds  = 10
# dlq_visibility_timeout_seconds = 850
# dlq_sqs_managed_sse_enabled    = true
# dlq_source_service             = "lambda.amazonaws.com"

####################################
# IAM Role Inputs
####################################


# ####################################
# # Analyzer Lambda Inputs
# ####################################
# analyzer_runtime       = "python3.14"
# analyzer_architectures = ["x86_64"]
# analyzer_handler       = "lambda_function.lambda_handler"
# analyzer_timeout       = 850
# analyzer_memory_size   = 128

# # Analyzer Lambda Source Code
# analyzer_lambda_sourcecode_bucket   = "emami-lambda-codes"
# analyzer_lambda_sourcecode_filename = "dev/analyzer_lambda_v1.0.0.zip"

# ####################################
# # API Lambda Inputs
# ####################################
# api_runtime       = "python3.13"
# api_architectures = ["x86_64"]
# api_handler       = "lambda_function.lambda_handler"
# api_timeout       = 60
# api_memory_size   = 128

# # API Lambda Source Code
# api_lambda_sourcecode_bucket   = "emami-lambda-codes"
# api_lambda_sourcecode_filename = "dev/api_lambda_v1.0.0.zip"


# -------------------------
# Batch Counts To BatchTable Lambda Values
# -------------------------

batch_counts_runtime                    = "python3.12"
batch_counts_architectures             = ["x86_64"]
batch_counts_handler                   = "lambda_function.lambda_handler"
batch_counts_timeout                   = 843
batch_counts_memory_size               = 128
batch_counts_lambda_sourcecode_bucket  = "test-emami-lambda-codes"   
batch_counts_lambda_sourcecode_filename = "dev/Batch_counts_to_BatchTable.zip"   
batch_counts_ephemeral_storage_size    = 512





# -------------------------
# Batch Orchestrator Lambda Values
# -------------------------

batch_orchestrator_runtime                     = "python3.12"
batch_orchestrator_architectures              = ["x86_64"]
batch_orchestrator_handler                    = "lambda_function.lambda_handler"
batch_orchestrator_timeout                    = 603
batch_orchestrator_memory_size                = 128
batch_orchestrator_lambda_sourcecode_bucket   = "test-emami-lambda-codes"  
batch_orchestrator_lambda_sourcecode_filename = "dev/Batch-Orchestrator.zip" 
batch_orchestrator_ephemeral_storage_size     = 512



# -------------------------
# Analyzer Lambda Values
# -------------------------

analyzer_runtime                     = "python3.12"
analyzer_architectures              = ["x86_64"]
analyzer_handler                    = "lambda_function.lambda_handler"
analyzer_timeout                    = 900
analyzer_memory_size                = 512
analyzer_lambda_sourcecode_bucket   = "test-emami-lambda-codes"    
analyzer_lambda_sourcecode_filename = "dev/codesenseai-prd-emami-analyzer-lambda.zip"   
analyzer_ephemeral_storage_size     = 1024



# -------------------------
# Batch Output To Tables Lambda Values
# -------------------------

batch_output_runtime                     = "python3.12"
batch_output_architectures              = ["x86_64"]
batch_output_handler                    = "lambda_function.lambda_handler"
batch_output_timeout                    = 603
batch_output_memory_size                = 128
batch_output_lambda_sourcecode_bucket   = "test-emami-lambda-codes"  
batch_output_lambda_sourcecode_filename = "dev/batch_output_to_tabels.zip"   
batch_output_ephemeral_storage_size     = 5012




# -------------------------
# Details To Manifest Lambda Values
# -------------------------

details_manifest_runtime                     = "python3.12"
details_manifest_architectures              = ["x86_64"]
details_manifest_handler                    = "lambda_function.lambda_handler"
details_manifest_timeout                    = 899
details_manifest_memory_size                = 128
details_manifest_lambda_sourcecode_bucket   = "test-emami-lambda-codes"  
details_manifest_lambda_sourcecode_filename = "dev/details_to_manifest_lambda.zip" 
details_manifest_ephemeral_storage_size     = 512






# -------------------------
# Process Usage Data To Manifest Lambda Values
# -------------------------

usage_manifest_runtime                     = "python3.12"
usage_manifest_architectures              = ["x86_64"]
usage_manifest_handler                    = "lambda_function.lambda_handler"
usage_manifest_timeout                    = 3
usage_manifest_memory_size                = 128
usage_manifest_lambda_sourcecode_bucket   = "test-emami-lambda-codes" 
usage_manifest_lambda_sourcecode_filename = "dev/Process_usagedata_to_manifest.zip" 
usage_manifest_ephemeral_storage_size     = 512




# -------------------------
# KS No Chunk Analyzer Lambda Values
# -------------------------

ks_no_chunk_analyzer_runtime                     = "python3.12"
ks_no_chunk_analyzer_architectures              = ["x86_64"]
ks_no_chunk_analyzer_handler                    = "lambda_function.lambda_handler"
ks_no_chunk_analyzer_timeout                    = 900
ks_no_chunk_analyzer_memory_size                = 512
ks_no_chunk_analyzer_lambda_sourcecode_bucket   = "test-emami-lambda-codes" 
ks_no_chunk_analyzer_lambda_sourcecode_filename = "dev/codesense-ai-ks-no-chunk-analyzer.zip" 
ks_no_chunk_analyzer_ephemeral_storage_size     = 1024
#ks_no_chunk_analyzer_api_key                    = "YWNyb3NzbW9kZWxyZXNlYXJjaG11ZG5vcn"



# -------------------------
# Ensure Manifest Details Aggregates Lambda Values
# -------------------------

ensure_manifest_details_aggregates_runtime                     = "python3.12"
ensure_manifest_details_aggregates_architectures              = ["x86_64"]
ensure_manifest_details_aggregates_handler                    = "lambda_function.lambda_handler"
ensure_manifest_details_aggregates_timeout                    = 3
ensure_manifest_details_aggregates_memory_size                = 128
ensure_manifest_details_aggregates_lambda_sourcecode_bucket   = "test-emami-lambda-codes"  
ensure_manifest_details_aggregates_lambda_sourcecode_filename = "dev/ensure-manifest-details-aggregates.zip"  
ensure_manifest_details_aggregates_ephemeral_storage_size     = 512




# -------------------------
# Batch Jsonl Creator Lambda Values
# -------------------------

batch_jsonl_creator_runtime                     = "python3.12"
batch_jsonl_creator_architectures              = ["x86_64"]
batch_jsonl_creator_handler                    = "lambda_function.lambda_handler"
batch_jsonl_creator_timeout                    = 900
batch_jsonl_creator_memory_size                = 128
batch_jsonl_creator_lambda_sourcecode_bucket   = "test-emami-lambda-codes" 
batch_jsonl_creator_lambda_sourcecode_filename = "dev/Batch-Orchestrator.zip"  
batch_jsonl_creator_ephemeral_storage_size     = 512



# -------------------------
# API Lambda Values
# -------------------------

api_runtime                     = "python3.13"
api_architectures              = ["x86_64"]
api_handler                    = "lambda_function.lambda_handler"
api_timeout                    = 60
api_memory_size                = 128
api_lambda_sourcecode_bucket   = "test-emami-lambda-codes"  
api_lambda_sourcecode_filename = "dev/codesenseai-prd-emami-api-lambda.zip" 
api_ephemeral_storage_size     = 512










# ####################################
# # DynamoDB Manifest Table Inputs
# ####################################
# manifest_ddb_billing_mode  = "PAY_PER_REQUEST"
# manifest_ddb_hashkey       = "id"
# manifest_ddb_attributename = "id"
# manifest_ddb_attributetype = "S"
# manifest_enable_ddb_backup = false

# ####################################
# # DynamoDB Index Table Inputs
# ####################################
# index_ddb_billing_mode  = "PAY_PER_REQUEST"
# index_ddb_hashkey       = "id"
# index_ddb_attributename = "id"
# index_ddb_attributetype = "S"
# index_enable_ddb_backup = false




# -------------------------
# Index Table Values
# -------------------------

index_ddb_billing_mode  = "PAY_PER_REQUEST"
index_ddb_hashkey       = "id"
index_ddb_attributename = "id"
index_ddb_attributetype = "S"
index_enable_ddb_backup = true

# -------------------------
# Manifest Table Values
# -------------------------

manifest_ddb_billing_mode  = "PAY_PER_REQUEST"
manifest_ddb_hashkey       = "id"
manifest_ddb_attributename = "id"
manifest_ddb_attributetype = "S"
manifest_enable_ddb_backup = true

# -------------------------
# Batch Table Values
# -------------------------

batch_ddb_billing_mode  = "PAY_PER_REQUEST"
batch_ddb_hashkey       = "pk"
batch_ddb_attributename = "pk"
batch_ddb_attributetype = "S"
batch_enable_ddb_backup = true

# -------------------------
# Issues Table Values
# -------------------------

issues_ddb_billing_mode  = "PAY_PER_REQUEST"
issues_ddb_hashkey       = "id"
issues_ddb_attributename = "id"
issues_ddb_attributetype = "S"
issues_enable_ddb_backup = true



# ####################################
# # REST API Inputs
# ####################################
# stage_name   = "v1"

####################################
# Cognito User Pool Inputs
####################################
enable_mfa              = true




###############

jwt_issuer =module.cognito.user_pool_issuer
jwt_audience = [module.cognito.cognito_app_client_name]

