provider "aws" {
  region = var.aws_region
}

# Calling S3 Bucket Module for creating abap storing bucket
# module "s3bucket_abap" {
#   source                 = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//s3bucket?ref=main"
#   bucket_name            = local.s3_abap_bucket
#   enable_s3_notification = var.abapbucket_s3_notification
#   enable_static_hosting  = var.abapbucket_static_hosting
#   sqs_queue_arn          = module.sqs_main.sqs_arn
#   aws_console_tags       = local.aws_console_tags
# }

# Calling S3 Bucket Module for creating emami final bucket

module "s3bucket_emami_final" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//s3bucket?ref=main"
source = "G:/Terraform/codesenseai-terraform-modules-prod/s3bucket"
  bucket_name            = local.s3_emami_final_bucket
  enable_s3_notification = var.emamibucket_s3_notification
  enable_static_hosting  = var.emamibucket_static_hosting

  batch_queue_arn        = module.sqs_batch.sqs_arn
  main_queue_arn         = module.sqs_main.sqs_arn
  details_queue_arn      = module.sqs_details.sqs_arn
  usage_queue_arn        = module.sqs_usage.sqs_arn
  batch_output_queue_arn = module.sqs_batch_output.sqs_arn

  aws_console_tags = local.aws_console_tags
}

#Calling S3 Bucket Module for Creation of S3 Bucket for FrontendUI
module "s3bucket_ui" {
  source                      = "G:/Terraform/codesenseai-terraform-modules-prod/s3bucket"
  bucket_name                 = local.s3_ui_bucket
  enable_static_hosting       = var.uibucket_static_hosting
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
  enable_s3_notification      = var.uibucket_s3_notification
  aws_console_tags            = local.aws_console_tags
}


# Calling SQS Queue Module
# module "sqs_main" {
#   source                     = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//sqs?ref=main"
#   sqs_name                   = local.main_sqs
#   delay_seconds              = var.main_delay_seconds
#   max_message_size           = var.main_max_message_size
#   message_retention_seconds  = var.main_message_retention_seconds
#   receive_wait_time_seconds  = var.main_receive_wait_time_seconds
#   visibility_timeout_seconds = var.main_visibility_timeout_seconds
#   sqs_managed_sse_enabled    = var.main_sqs_managed_sse_enabled
#   enable_queue_policy        = true
#   source_service             = var.main_source_service
#   source_arn                 = module.s3bucket_abap.bucket_arn
#   aws_console_tags           = local.aws_console_tags
# }

####################################
# SQS batch_output  
##################################

module "sqs_batch_output" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"

  sqs_name                   = local.batch_output_sqs
  delay_seconds              = var.batch_output_delay_seconds
  max_message_size           = var.batch_output_max_message_size
  message_retention_seconds  = var.batch_output_message_retention_seconds
  receive_wait_time_seconds  = var.batch_output_receive_wait_time_seconds
  visibility_timeout_seconds = var.batch_output_visibility_timeout_seconds
  sqs_managed_sse_enabled    = var.batch_output_sqs_managed_sse_enabled

  enable_queue_policy = true
  source_service      = var.batch_output_source_service
  source_arn          = module.s3bucket_emami_final.bucket_arn

  aws_console_tags = local.aws_console_tags
}

####################################
# SQS batch-queue 
####################################


module "sqs_batch" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"

  sqs_name                   = local.batch_sqs
  delay_seconds              = var.batch_delay_seconds
  max_message_size           = var.batch_max_message_size
  message_retention_seconds  = var.batch_message_retention_seconds
  receive_wait_time_seconds  = var.batch_receive_wait_time_seconds
  visibility_timeout_seconds = var.batch_visibility_timeout_seconds
  sqs_managed_sse_enabled    = var.batch_sqs_managed_sse_enabled

  enable_queue_policy = true
  source_service      = var.batch_source_service
  source_arn          = module.s3bucket_emami_final.bucket_arn

  aws_console_tags = local.aws_console_tags
}


####################################
# SQS codesenseai-prd-emami-main-sqs
####################################


module "sqs_main" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"

  sqs_name                   = local.main_sqs
  delay_seconds              = var.main_delay_seconds
  max_message_size           = var.main_max_message_size
  message_retention_seconds  = var.main_message_retention_seconds
  receive_wait_time_seconds  = var.main_receive_wait_time_seconds
  visibility_timeout_seconds = var.main_visibility_timeout_seconds
  sqs_managed_sse_enabled    = var.main_sqs_managed_sse_enabled

  enable_queue_policy = true
  source_service      = var.main_source_service
  source_arn          = module.s3bucket_emami_final.bucket_arn

  aws_console_tags = local.aws_console_tags
}

####################################
# SQS details_queue_codesense
####################################

module "sqs_details" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"

  sqs_name                   = local.details_sqs
  delay_seconds              = var.details_delay_seconds
  max_message_size           = var.details_max_message_size
  message_retention_seconds  = var.details_message_retention_seconds
  receive_wait_time_seconds  = var.details_receive_wait_time_seconds
  visibility_timeout_seconds = var.details_visibility_timeout_seconds
  sqs_managed_sse_enabled    = var.details_sqs_managed_sse_enabled

  enable_queue_policy = true
  source_service      = var.details_source_service
  source_arn          = module.s3bucket_emami_final.bucket_arn

  aws_console_tags = local.aws_console_tags
}


####################################
# SQS usage_data_queue
####################################


module "sqs_usage" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"

  sqs_name                   = local.usage_sqs
  delay_seconds              = var.usage_delay_seconds
  max_message_size           = var.usage_max_message_size
  message_retention_seconds  = var.usage_message_retention_seconds
  receive_wait_time_seconds  = var.usage_receive_wait_time_seconds
  visibility_timeout_seconds = var.usage_visibility_timeout_seconds
  sqs_managed_sse_enabled    = var.usage_sqs_managed_sse_enabled

  enable_queue_policy = true
  source_service      = var.usage_source_service
  source_arn          = module.s3bucket_emami_final.bucket_arn

  aws_console_tags = local.aws_console_tags
}





# #Calling SQS_DLQ Module
# module "sqs_dlq" {
#   source                     = "G:/Terraform/codesenseai-terraform-modules-prod/sqs"
#   sqs_name                   = local.dlq_sqs
#   delay_seconds              = var.dlq_delay_seconds
#   max_message_size           = var.dlq_max_message_size
#   message_retention_seconds  = var.dlq_message_retention_seconds
#   receive_wait_time_seconds  = var.dlq_receive_wait_time_seconds
#   visibility_timeout_seconds = var.dlq_visibility_timeout_seconds
#   sqs_managed_sse_enabled    = var.dlq_sqs_managed_sse_enabled
#   enable_queue_policy        = true
#   source_service             = var.dlq_source_service
#   source_arn                 = module.lambda_analyzer.lambda_arn
#   aws_console_tags           = local.aws_console_tags
# }


#Calling IAM Role Module to create IAM Role of Analyzer Lambda
# module "iamrole_analyzer" {
#   source             = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"
#   rolename           = local.analyzer_lambda_role_name
#   inline_policy_file = local.analyzer_policy
#   aws_console_tags   = local.aws_console_tags
# }

# #Calling IAM Role Module to create IAM Role of API Lambda
# module "iamrole_api" {
#   source             = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"
#   rolename           = local.api_lambda_role_name
#   inline_policy_file = local.api_policy
#   aws_console_tags   = local.aws_console_tags
# }



# -------------------------
# Batch Counts To BatchTable IAM Role
# -------------------------

module "iamrole_batch_counts" {
 # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"

  rolename           = local.batch_counts_role_name
  inline_policy_file = local.batch_counts_policy
  aws_console_tags   = local.aws_console_tags
}

# -------------------------
# Batch Orchestrator IAM Role
# -------------------------

module "iamrole_batch_orchestrator" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.batch_orchestrator_role_name
  inline_policy_file = local.batch_orchestrator_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# Analyzer Lambda IAM Role
# -------------------------

module "iamrole_analyzer" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"

  rolename           = local.analyzer_lambda_role_name
  inline_policy_file = local.analyzer_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# Batch Output To Tables IAM Role
# -------------------------

module "iamrole_batch_output" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.batch_output_role_name
  inline_policy_file = local.batch_output_policy
  aws_console_tags   = local.aws_console_tags
}



# -------------------------
# Details To Manifest IAM Role
# -------------------------

module "iamrole_details_manifest" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.details_manifest_role_name
  inline_policy_file = local.details_manifest_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# Process Usage Data To Manifest IAM Role
# -------------------------

module "iamrole_usage_manifest" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"

  rolename           = local.usage_manifest_role_name
  inline_policy_file = local.usage_manifest_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# KS No Chunk Analyzer IAM Role
# -------------------------

module "iamrole_ks_no_chunk_analyzer" {
#  source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.ks_no_chunk_analyzer_role_name
  inline_policy_file = local.ks_no_chunk_analyzer_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# Ensure Manifest Details Aggregates IAM Role
# -------------------------

module "iamrole_ensure_manifest_details_aggregates" {
#  source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.ensure_manifest_details_aggregates_role_name
  inline_policy_file = local.ensure_manifest_details_aggregates_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# Batch Jsonl Creator IAM Role
# -------------------------

module "iamrole_batch_jsonl_creator" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"

  

  rolename           = local.batch_jsonl_creator_role_name
  inline_policy_file = local.batch_jsonl_creator_policy
  aws_console_tags   = local.aws_console_tags
}


# -------------------------
# API Lambda IAM Role
# -------------------------

module "iamrole_api" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//iamrolemodule?ref=main"
  source  = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


  rolename           = local.api_lambda_role_name
  inline_policy_file = local.api_policy
  aws_console_tags   = local.aws_console_tags
}


# module "BatchInvocationRole" {

#     source = "G:/Terraform/codesenseai-terraform-modules-prod/iamrolemodule"


#     rolename           = local.batch_invocation_role_name
#     inline_policy_file = local.batch_invocation_policy
#     aws_console_tags = local.aws_console_tags

# }


# -------------------------
# Bedrock Batch IAM Role
# -------------------------

module "iamrole_bedrock_batch" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/bedrockiamrolemodule"

  rolename           = local.bedrock_batch_role_name
  inline_policy_file = local.bedrock_batch_policy
  aws_console_tags   = local.aws_console_tags
}










# # Calling Lambda Moudle for Analyzer Function
# module "lambda_analyzer" {
#   source                     = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
#   lambda_name                = local.analyzer_lambda
#   runtime                    = var.analyzer_runtime
#   architectures              = var.analyzer_architectures
#   handler                    = var.analyzer_handler
#   timeout                    = var.analyzer_timeout
#   memory_size                = var.analyzer_memory_size
#   lambda_sourcecode_bucket   = var.analyzer_lambda_sourcecode_bucket
#   lambda_sourcecode_filename = var.analyzer_lambda_sourcecode_filename
#   enable_sqs_trigger         = true
#   sqs_arn                    = module.sqs_main.sqs_arn
#   iamrolearn                 = module.iamrole_analyzer.iamrolearn
#   aws_console_tags           = local.aws_console_tags
#   environment_variables = {
#     MODEL_ID            = "anthropic.claude-3-5-sonnet-20240620-v1:0"
#     DEFAULT_REGION      = var.aws_region
#     DYNAMO_TABLE        = module.ddb_index.ddb_name
#     MANIFEST_TABLE      = module.ddb_mainfest.ddb_name
#     MAX_CHARS_PER_CHUNK = "50_000"
#     SLIM_ABAP           = "1"
#     DLQ_URL             = module.sqs_dlq.sqs_url
#     MAX_CHARS_PER_OBJ   = "2_000_000"
#   }
# }

# #Calling Lambda Module for API Calls
# module "lambda_api" {
#   source                     = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
#   lambda_name                = local.api_lambda
#   runtime                    = var.api_runtime
#   architectures              = var.api_architectures
#   handler                    = var.api_handler
#   timeout                    = var.api_timeout
#   memory_size                = var.api_memory_size
#   lambda_sourcecode_bucket   = var.api_lambda_sourcecode_bucket
#   lambda_sourcecode_filename = var.api_lambda_sourcecode_filename
#   iamrolearn                 = module.iamrole_api.iamrolearn
#   enable_sqs_trigger         = false
#   aws_console_tags           = local.aws_console_tags
#   environment_variables = {
#     DEFAULT_REGION = var.aws_region
#     OBJECT_TABLE   = module.ddb_index.ddb_name
#     MANIFEST_TABLE = module.ddb_mainfest.ddb_name
#   }
# }

# -------------------------
# Batch Counts To BatchTable Lambda
# -------------------------

module "lambda_batch_counts" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
 source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"
  lambda_name                = local.batch_counts_lambda
  runtime                    = var.batch_counts_runtime
  architectures              = var.batch_counts_architectures
  handler                    = var.batch_counts_handler
  timeout                    = var.batch_counts_timeout
  memory_size                = var.batch_counts_memory_size
  lambda_sourcecode_bucket   = var.batch_counts_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.batch_counts_lambda_sourcecode_filename
  ephemeral_storage_size     = var.batch_counts_ephemeral_storage_size

  enable_sqs_trigger = true
  sqs_arn            = module.sqs_batch.sqs_arn

  iamrolearn       = module.iamrole_batch_counts.iamrolearn 
  aws_console_tags = local.aws_console_tags   

  environment_variables = {
    TABLE_NAME = module.ddb_batch.ddb_name 
  }
}



# -------------------------
# Batch Orchestrator Lambda
# -------------------------

module "lambda_batch_orchestrator" {
  # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"

 source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.batch_orchestrator_lambda
  runtime                    = var.batch_orchestrator_runtime
  architectures              = var.batch_orchestrator_architectures
  handler                    = var.batch_orchestrator_handler
  timeout                    = var.batch_orchestrator_timeout
  memory_size                = var.batch_orchestrator_memory_size
  lambda_sourcecode_bucket   = var.batch_orchestrator_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.batch_orchestrator_lambda_sourcecode_filename
  ephemeral_storage_size     = var.batch_orchestrator_ephemeral_storage_size

  # No SQS trigger
  enable_sqs_trigger = false
  sqs_arn            = ""

  iamrolearn       = module.iamrole_batch_orchestrator.iamrolearn  
  aws_console_tags = local.aws_console_tags   

  environment_variables = {
    TABLE_NAME = module.ddb_batch.ddb_name
  }

  # Max concurrency = 1
  reserved_concurrent_executions = 1
}



# -------------------------
# Analyzer Lambda
# -------------------------

module "lambda_analyzer" {
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"
  lambda_name                = local.analyzer_lambda
  runtime                    = var.analyzer_runtime
  architectures              = var.analyzer_architectures
  handler                    = var.analyzer_handler
  timeout                    = var.analyzer_timeout
  memory_size                = var.analyzer_memory_size
  lambda_sourcecode_bucket   = var.analyzer_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.analyzer_lambda_sourcecode_filename
  ephemeral_storage_size     = var.analyzer_ephemeral_storage_size

  # SQS Trigger Attached
  enable_sqs_trigger = true
  sqs_arn            = module.sqs_main.sqs_arn

  iamrolearn       = module.iamrole_analyzer.iamrolearn 
  aws_console_tags = local.aws_console_tags  

  environment_variables = {
    #DLQ_URL             = module.sqs_dlq.sqs_url       #todo
    MODEL_ID            = "anthropic.claude-3-5-sonnet-20240620-v1:0"
    DEFAULT_REGION      = var.aws_region
    MAX_CHARS_PER_OBJ   = "2_000_000"
    SLIM_ABAP           = "1"
    DYNAMO_TABLE        = module.ddb_index.ddb_name
    MANIFEST_TABLE      = module.ddb_manifest.ddb_name
    MAX_CHARS_PER_CHUNK = "50_000"
  }

  # No reserved concurrency set = AWS default
}



# -------------------------
# Batch Output To Tables Lambda
# -------------------------

module "lambda_batch_output" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.batch_output_lambda
  runtime                    = var.batch_output_runtime
  architectures              = var.batch_output_architectures
  handler                    = var.batch_output_handler
  timeout                    = var.batch_output_timeout
  memory_size                = var.batch_output_memory_size
  lambda_sourcecode_bucket   = var.batch_output_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.batch_output_lambda_sourcecode_filename
  ephemeral_storage_size     = var.batch_output_ephemeral_storage_size

  # SQS Trigger Attached
  enable_sqs_trigger = true
  sqs_arn            = module.sqs_batch_output.sqs_arn

  iamrolearn       = module.iamrole_batch_output.iamrolearn  
  aws_console_tags = local.aws_console_tags  

  environment_variables = {
    SOURCE_BUCKET  = module.s3bucket_emami_final.bucket_name
    DYNAMO_TABLE   = module.ddb_index.ddb_name
    MANIFEST_TABLE = module.ddb_manifest.ddb_name
  }

  # No reserved concurrency set = AWS default
}


# -------------------------
# Details To Manifest Lambda
# -------------------------

module "lambda_details_manifest" {
 # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.details_manifest_lambda
  runtime                    = var.details_manifest_runtime
  architectures              = var.details_manifest_architectures
  handler                    = var.details_manifest_handler
  timeout                    = var.details_manifest_timeout
  memory_size                = var.details_manifest_memory_size
  lambda_sourcecode_bucket   = var.details_manifest_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.details_manifest_lambda_sourcecode_filename
  ephemeral_storage_size     = var.details_manifest_ephemeral_storage_size

  # SQS Trigger Attached
  enable_sqs_trigger = true
  sqs_arn            = module.sqs_details.sqs_arn

  iamrolearn       = module.iamrole_details_manifest.iamrolearn
  aws_console_tags = local.aws_console_tags  

  environment_variables = {}

  # No reserved concurrency set = AWS default
}




# -------------------------
# Process Usage Data To Manifest Lambda
# -------------------------

module "lambda_usage_manifest" {
 # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.usage_manifest_lambda
  runtime                    = var.usage_manifest_runtime
  architectures              = var.usage_manifest_architectures
  handler                    = var.usage_manifest_handler
  timeout                    = var.usage_manifest_timeout
  memory_size                = var.usage_manifest_memory_size
  lambda_sourcecode_bucket   = var.usage_manifest_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.usage_manifest_lambda_sourcecode_filename
  ephemeral_storage_size     = var.usage_manifest_ephemeral_storage_size

  # SQS Trigger Attached
  enable_sqs_trigger = true
  sqs_arn            = module.sqs_usage.sqs_arn

  iamrolearn       = module.iamrole_usage_manifest.iamrolearn 
  aws_console_tags = local.aws_console_tags 

  environment_variables = {}

  # No reserved concurrency set = AWS default
}



# -------------------------
# KS No Chunk Analyzer Lambda
# -------------------------

module "lambda_ks_no_chunk_analyzer" {
 # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"


  lambda_name                = local.ks_no_chunk_analyzer_lambda
  runtime                    = var.ks_no_chunk_analyzer_runtime
  architectures              = var.ks_no_chunk_analyzer_architectures
  handler                    = var.ks_no_chunk_analyzer_handler
  timeout                    = var.ks_no_chunk_analyzer_timeout
  memory_size                = var.ks_no_chunk_analyzer_memory_size
  lambda_sourcecode_bucket   = var.ks_no_chunk_analyzer_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.ks_no_chunk_analyzer_lambda_sourcecode_filename
  ephemeral_storage_size     = var.ks_no_chunk_analyzer_ephemeral_storage_size

  # No SQS Trigger
  enable_sqs_trigger = false
  sqs_arn            = ""

  iamrolearn       = module.iamrole_ks_no_chunk_analyzer.iamrolearn
  aws_console_tags = local.aws_console_tags 

  environment_variables = {
    # API_KEY = var.ks_no_chunk_analyzer_api_key
  }

  # No reserved concurrency set = AWS default
}




# -------------------------
# Ensure Manifest Details Aggregates Lambda
# -------------------------

module "lambda_ensure_manifest_details_aggregates" {
 # source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
   source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.ensure_manifest_details_aggregates_lambda
  runtime                    = var.ensure_manifest_details_aggregates_runtime
  architectures              = var.ensure_manifest_details_aggregates_architectures
  handler                    = var.ensure_manifest_details_aggregates_handler
  timeout                    = var.ensure_manifest_details_aggregates_timeout
  memory_size                = var.ensure_manifest_details_aggregates_memory_size
  lambda_sourcecode_bucket   = var.ensure_manifest_details_aggregates_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.ensure_manifest_details_aggregates_lambda_sourcecode_filename
  ephemeral_storage_size     = var.ensure_manifest_details_aggregates_ephemeral_storage_size

  # No SQS Trigger
  enable_sqs_trigger = false
  sqs_arn            = ""

  iamrolearn       = module.iamrole_ensure_manifest_details_aggregates.iamrolearn
  aws_console_tags = local.aws_console_tags 

  environment_variables = {}

  reserved_concurrent_executions = 1
}


# -------------------------
# Batch Jsonl Creator Lambda
# -------------------------

module "lambda_batch_jsonl_creator" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.batch_jsonl_creator_lambda
  runtime                    = var.batch_jsonl_creator_runtime
  architectures              = var.batch_jsonl_creator_architectures
  handler                    = var.batch_jsonl_creator_handler
  timeout                    = var.batch_jsonl_creator_timeout
  memory_size                = var.batch_jsonl_creator_memory_size
  lambda_sourcecode_bucket   = var.batch_jsonl_creator_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.batch_jsonl_creator_lambda_sourcecode_filename
  ephemeral_storage_size     = var.batch_jsonl_creator_ephemeral_storage_size

  # No SQS Trigger
  enable_sqs_trigger = false
  sqs_arn            = ""

  iamrolearn       = module.iamrole_batch_jsonl_creator.iamrolearn
  aws_console_tags = local.aws_console_tags 

  environment_variables = {
    TABLE_NAME = module.ddb_batch.ddb_name
    BEADROCK_ROLE_ARN = module.iamrole_bedrock_batch.bedrock_batch_role_arn
  }

  # No reserved concurrency set = AWS default
}


# -------------------------
# API Lambda
# -------------------------

module "lambda_api" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//lambda?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/lambda"

  lambda_name                = local.api_lambda
  runtime                    = var.api_runtime
  architectures              = var.api_architectures
  handler                    = var.api_handler
  timeout                    = var.api_timeout
  memory_size                = var.api_memory_size
  lambda_sourcecode_bucket   = var.api_lambda_sourcecode_bucket
  lambda_sourcecode_filename = var.api_lambda_sourcecode_filename
  ephemeral_storage_size     = var.api_ephemeral_storage_size

  # No SQS Trigger
  enable_sqs_trigger = false
  sqs_arn            = ""

  iamrolearn       = module.iamrole_api.iamrolearn
  aws_console_tags = local.aws_console_tags 

  environment_variables = {
    DEFAULT_REGION = var.aws_region
    OBJECT_TABLE   = module.ddb_index.ddb_name
    MANIFEST_TABLE = module.ddb_manifest.ddb_name
  }

  # No reserved concurrency set = AWS default
}






# # Calling DynamoDB Manifest Table Module
# module "ddb_mainfest" {
#   source            = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
#   ddb_name          = local.manifest_ddb
#   ddb_billing_mode  = var.manifest_ddb_billing_mode
#   ddb_hashkey       = var.manifest_ddb_hashkey
#   ddb_attributename = var.manifest_ddb_attributename
#   ddb_attributetype = var.manifest_ddb_attributetype
#   enable_ddb_backup = var.manifest_enable_ddb_backup
#   aws_console_tags  = local.aws_console_tags
# }

# # Calling DynamoDB Index Table Module
# module "ddb_index" {
#   source            = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
#   ddb_name          = local.index_ddb
#   ddb_billing_mode  = var.index_ddb_billing_mode
#   ddb_hashkey       = var.index_ddb_hashkey
#   ddb_attributename = var.index_ddb_attributename
#   ddb_attributetype = var.index_ddb_attributetype
#   enable_ddb_backup = var.index_enable_ddb_backup
#   aws_console_tags  = local.aws_console_tags
# }



# Index Table
module "ddb_index" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
  source            = "G:/Terraform/codesenseai-terraform-modules-prod/dynamodb"

  ddb_name          = local.ddb_index_table
  ddb_billing_mode  = var.index_ddb_billing_mode
  ddb_hashkey       = var.index_ddb_hashkey
  ddb_attributename = var.index_ddb_attributename
  ddb_attributetype = var.index_ddb_attributetype
  enable_ddb_backup = var.index_enable_ddb_backup

  aws_console_tags = local.aws_console_tags
}

# Manifest Table
module "ddb_manifest" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
  source            = "G:/Terraform/codesenseai-terraform-modules-prod/dynamodb"

  ddb_name          = local.ddb_manifest_table
  ddb_billing_mode  = var.manifest_ddb_billing_mode
  ddb_hashkey       = var.manifest_ddb_hashkey
  ddb_attributename = var.manifest_ddb_attributename
  ddb_attributetype = var.manifest_ddb_attributetype
  enable_ddb_backup = var.manifest_enable_ddb_backup

  aws_console_tags = local.aws_console_tags
}

# Batch Table
module "ddb_batch" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
  source            = "G:/Terraform/codesenseai-terraform-modules-prod/dynamodb"

  ddb_name          = local.ddb_batch_table
  ddb_billing_mode  = var.batch_ddb_billing_mode
  ddb_hashkey       = var.batch_ddb_hashkey
  ddb_attributename = var.batch_ddb_attributename
  ddb_attributetype = var.batch_ddb_attributetype
  enable_ddb_backup = var.batch_enable_ddb_backup

  aws_console_tags = local.aws_console_tags
}

# Issues Table
module "ddb_issues" {
  #source = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//dynamodb?ref=main"
  source            = "G:/Terraform/codesenseai-terraform-modules-prod/dynamodb"

  ddb_name          = local.ddb_issues_table
  ddb_billing_mode  = var.issues_ddb_billing_mode
  ddb_hashkey       = var.issues_ddb_hashkey
  ddb_attributename = var.issues_ddb_attributename
  ddb_attributetype = var.issues_ddb_attributetype
  enable_ddb_backup = var.issues_enable_ddb_backup

  aws_console_tags = local.aws_console_tags
}



# #Calling the REST API Gateway Module
# module "restapigw" {
#   source           = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//restapimodule?ref=main"
#   restapi_name     = local.rest_api_name
#   stage_name       = var.stage_name
#   lambda_api_arn   = module.lambda_api.lambda_arn
#   lambda_api_name  = module.lambda_api.lambda_name
#   region           = var.aws_region
#   aws_console_tags = local.aws_console_tags
# }

#Calling CloudFront Module
module "cloudfront" {
  #source              = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//cloudfront?ref=main"
  source = "G:/Terraform/codesenseai-terraform-modules-prod/cloudfront"
  uibucket_name       = module.s3bucket_ui.bucket_name
  uibucket_domain     = module.s3bucket_ui.bucket_domain
  cloudfront_oac_name = local.cloudfront_oac_name
  cloudfront_comment  = local.cloudfront_comment
  aws_console_tags    = local.aws_console_tags
}

#Calling Cognito User Pool Module
module "coginto" {
  #source                  = "git::https://github.com/athermind/codesenseai-terraform-modules-prod.git//cognito?ref=main"
  source                  = "G:/Terraform/codesenseai-terraform-modules-prod/cognito"
  cognito_user_pool_name  = local.cognito_user_pool
  cognito_app_client_name = local.cognito_app_client
  cognito_domain_name     = local.cognito_domain
  enable_mfa              = var.enable_mfa
  aws_region              = var.aws_region
  callback_urls           = local.callback_urls
  logout_urls             = local.logout_urls
  aws_console_tags        = local.aws_console_tags
}





##################

# module "http_api_gateway" {
#   source = "G:/Terraform/codesenseai-terraform-modules-prod/httpapimodule"

#   api_name   = var.api_name
#   stage_name = var.stage_name

#   jwt_audience = var.jwt_audience
#   jwt_issuer   = var.jwt_issuer

#   lambda_arns = var.lambda_arns
#   tags        = var.tags
# }























