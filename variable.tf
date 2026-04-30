####################################
# AWS Global Variables
####################################
variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
}

variable "environment" {
  description = "Application environment (e.g., dev, qa, prd)"
  type        = string
}

variable "app_version" {
  description = "Current application version"
  type        = string
}

variable "project" {
  description = "The name of Project"
  type        = string
}

variable "client" {
  description = "Enter the name of the CLIENT"
  type        = string
}

####################################
# S3 ABAP Bucket Variables
####################################
# variable "abapbucket_s3_notification" {
#   description = "Enable or disable S3 notifications for the ABAP bucket"
#   type        = bool
# }

# variable "abapbucket_static_hosting" {
#   description = "Enable or disable static website hosting for the ABAP bucket"
#   type        = bool
# }

variable "emamibucket_s3_notification" {
  description = "Enable S3 notification for emami bucket"
  type        = bool
}

variable "emamibucket_static_hosting" {
  description = "Enable static hosting for emami bucket"
  type        = bool
}

####################################
# S3 Frontend Bucket Variables
####################################
variable "uibucket_s3_notification" {
  description = "Enable or disable S3 notifications for the frontend bucket"
  type        = bool
}

variable "uibucket_static_hosting" {
  description = "Enable or disable static website hosting for the frontend bucket"
  type        = bool
}

####################################
# SQS Main Queue Variables
####################################
# variable "main_delay_seconds" {
#   description = "Message delivery delay in seconds"
#   type        = number
# }

# variable "main_max_message_size" {
#   description = "Maximum message size in bytes"
#   type        = number
# }

# variable "main_message_retention_seconds" {
#   description = "Message retention period in seconds"
#   type        = number
# }

# variable "main_receive_wait_time_seconds" {
#   description = "Long polling wait time in seconds"
#   type        = number
# }

# variable "main_visibility_timeout_seconds" {
#   description = "Visibility timeout in seconds"
#   type        = number
# }

# variable "main_sqs_managed_sse_enabled" {
#   description = "Enable SQS managed server-side encryption"
#   type        = bool
# }

# variable "main_source_service" {
#   description = "AWS service allowed to send messages to the main queue"
#   type        = string
# }



####################################
# SQS batch_output  
##################################

variable "batch_output_delay_seconds" {
  description = "Delay seconds for batch output queue"
  type        = number
}

variable "batch_output_max_message_size" {
  description = "Max message size for batch output queue"
  type        = number
}

variable "batch_output_message_retention_seconds" {
  description = "Retention period for batch output queue"
  type        = number
}

variable "batch_output_receive_wait_time_seconds" {
  description = "Receive wait time for batch output queue"
  type        = number
}

variable "batch_output_visibility_timeout_seconds" {
  description = "Visibility timeout for batch output queue"
  type        = number
}

variable "batch_output_sqs_managed_sse_enabled" {
  description = "Enable SSE for batch output queue"
  type        = bool
}

variable "batch_output_source_service" {
  description = "Source service allowed to send messages"
  type        = string
}



####################################
# SQS batch-queue 
####################################


variable "batch_delay_seconds" {
  description = "Delay seconds for batch queue"
  type        = number
}

variable "batch_max_message_size" {
  description = "Maximum message size for batch queue"
  type        = number
}

variable "batch_message_retention_seconds" {
  description = "Message retention period for batch queue"
  type        = number
}

variable "batch_receive_wait_time_seconds" {
  description = "Receive wait time for batch queue"
  type        = number
}

variable "batch_visibility_timeout_seconds" {
  description = "Visibility timeout for batch queue"
  type        = number
}

variable "batch_sqs_managed_sse_enabled" {
  description = "Enable SSE for batch queue"
  type        = bool
}

variable "batch_source_service" {
  description = "Allowed source service for queue policy"
  type        = string
}




####################################
# SQS codesenseai-prd-emami-main-sqs
####################################


variable "main_delay_seconds" {
  type = number
}

variable "main_max_message_size" {
  type = number
}

variable "main_message_retention_seconds" {
  type = number
}

variable "main_receive_wait_time_seconds" {
  type = number
}

variable "main_visibility_timeout_seconds" {
  type = number
}

variable "main_sqs_managed_sse_enabled" {
  type = bool
}

variable "main_source_service" {
  type = string
}


####################################
# SQS details_queue_codesense
####################################

variable "details_delay_seconds" {
  type = number
}

variable "details_max_message_size" {
  type = number
}

variable "details_message_retention_seconds" {
  type = number
}

variable "details_receive_wait_time_seconds" {
  type = number
}

variable "details_visibility_timeout_seconds" {
  type = number
}

variable "details_sqs_managed_sse_enabled" {
  type = bool
}

variable "details_source_service" {
  type = string
}



####################################
# SQS usage_data_queue
####################################




variable "usage_delay_seconds" {
  type = number
}

variable "usage_max_message_size" {
  type = number
}

variable "usage_message_retention_seconds" {
  type = number
}

variable "usage_receive_wait_time_seconds" {
  type = number
}

variable "usage_visibility_timeout_seconds" {
  type = number
}

variable "usage_sqs_managed_sse_enabled" {
  type = bool
}

variable "usage_source_service" {
  type = string
}









# ####################################
# # SQS Dead Letter Queue (DLQ) Variables
# ####################################
# variable "dlq_delay_seconds" {
#   description = "DLQ message delivery delay in seconds"
#   type        = number
# }

# variable "dlq_max_message_size" {
#   description = "DLQ maximum message size in bytes"
#   type        = number
# }

# variable "dlq_message_retention_seconds" {
#   description = "DLQ message retention period in seconds"
#   type        = number
# }

# variable "dlq_receive_wait_time_seconds" {
#   description = "DLQ long polling wait time in seconds"
#   type        = number
# }

# variable "dlq_sqs_managed_sse_enabled" {
#   description = "Enable managed encryption for the DLQ"
#   type        = bool
# }

# variable "dlq_visibility_timeout_seconds" {
#   description = "DLQ visibility timeout in seconds"
#   type        = number
# }

# variable "dlq_source_service" {
#   description = "AWS service allowed to send messages to the DLQ"
#   type        = string
# }

####################################
# IAM Variables
####################################


####################################
# Analyzer Lambda Variables
####################################
# variable "analyzer_runtime" {
#   description = "Runtime environment for Analyzer Lambda"
#   type        = string
# }

# variable "analyzer_architectures" {
#   description = "Instruction set architecture for Analyzer Lambda"
#   type        = list(string)
#   default     = ["x86_64"]
# }

# variable "analyzer_handler" {
#   description = "Analyzer Lambda handler entry point"
#   type        = string
# }

# variable "analyzer_timeout" {
#   description = "Analyzer Lambda timeout in seconds"
#   type        = number
# }

# variable "analyzer_memory_size" {
#   description = "Analyzer Lambda memory size in MB"
#   type        = number
# }

# variable "analyzer_lambda_sourcecode_bucket" {
#   description = "S3 bucket containing Analyzer Lambda code"
#   type        = string
# }

# variable "analyzer_lambda_sourcecode_filename" {
#   description = "Analyzer Lambda deployment package filename"
#   type        = string
# }

# ####################################
# # API Lambda Variables
# ####################################
# variable "api_runtime" {
#   description = "Runtime environment for API Lambda"
#   type        = string
# }

# variable "api_architectures" {
#   description = "Instruction set architecture for API Lambda"
#   type        = list(string)
#   default     = ["x86_64"]
# }

# variable "api_handler" {
#   description = "API Lambda handler entry point"
#   type        = string
# }

# variable "api_timeout" {
#   description = "API Lambda timeout in seconds"
#   type        = number
# }

# variable "api_memory_size" {
#   description = "API Lambda memory size in MB"
#   type        = number
# }

# variable "api_lambda_sourcecode_bucket" {
#   description = "S3 bucket containing API Lambda code"
#   type        = string
# }

# variable "api_lambda_sourcecode_filename" {
#   description = "API Lambda deployment package filename"
#   type        = string
# }

# -------------------------
# Batch Counts To BatchTable Lambda Variables
# -------------------------

variable "batch_counts_runtime" {
  description = "Runtime for batch counts lambda"
  type        = string
}

variable "batch_counts_architectures" {
  description = "Architecture for batch counts lambda"
  type        = list(string)
  default     = ["x86_64"]
}

variable "batch_counts_handler" {
  description = "Handler for batch counts lambda"
  type        = string
}

variable "batch_counts_timeout" {
  description = "Timeout for batch counts lambda"
  type        = number
}

variable "batch_counts_memory_size" {
  description = "Memory size for batch counts lambda"
  type        = number
}

variable "batch_counts_lambda_sourcecode_bucket" {
  description = "Source code bucket for batch counts lambda"
  type        = string
}

variable "batch_counts_lambda_sourcecode_filename" {
  description = "Source code file for batch counts lambda"
  type        = string
}

variable "batch_counts_ephemeral_storage_size" {
  description = "Ephemeral storage size for batch counts lambda"
  type        = number
  default     = null
}




# -------------------------
# Batch Orchestrator Lambda Variables
# -------------------------

variable "batch_orchestrator_runtime" {
  description = "Runtime for batch orchestrator lambda"
  type        = string
}

variable "batch_orchestrator_architectures" {
  description = "Architecture for batch orchestrator lambda"
  type        = list(string)
  default     = ["x86_64"]
}

variable "batch_orchestrator_handler" {
  description = "Handler for batch orchestrator lambda"
  type        = string
}

variable "batch_orchestrator_timeout" {
  description = "Timeout for batch orchestrator lambda"
  type        = number
}

variable "batch_orchestrator_memory_size" {
  description = "Memory size for batch orchestrator lambda"
  type        = number
}

variable "batch_orchestrator_lambda_sourcecode_bucket" {
  description = "Source bucket for batch orchestrator lambda"
  type        = string
}

variable "batch_orchestrator_lambda_sourcecode_filename" {
  description = "Source code file for batch orchestrator lambda"
  type        = string
}

variable "batch_orchestrator_ephemeral_storage_size" {
  description = "Ephemeral storage for batch orchestrator lambda"
  type        = number
  default     = null
}

# variable "batch_orchestrator_iamrolearn" {
#   description = "IAM role ARN for batch orchestrator lambda"
#   type        = string
# }



# -------------------------
# Analyzer Lambda Variables
# -------------------------

variable "analyzer_runtime" {
  description = "Runtime for analyzer lambda"
  type        = string
}

variable "analyzer_architectures" {
  description = "Architectures for analyzer lambda"
  type        = list(string)
  default     = ["x86_64"]
}

variable "analyzer_handler" {
  description = "Handler for analyzer lambda"
  type        = string
}

variable "analyzer_timeout" {
  description = "Timeout for analyzer lambda"
  type        = number
}

variable "analyzer_memory_size" {
  description = "Memory size for analyzer lambda"
  type        = number
}

variable "analyzer_lambda_sourcecode_bucket" {
  description = "Source code bucket for analyzer lambda"
  type        = string
}

variable "analyzer_lambda_sourcecode_filename" {
  description = "Source code file for analyzer lambda"
  type        = string
}

variable "analyzer_ephemeral_storage_size" {
  description = "Ephemeral storage size for analyzer lambda"
  type        = number
  default     = null
}


# -------------------------
# Batch Output To Tables Lambda Variables
# -------------------------

variable "batch_output_runtime" {
  description = "Runtime for batch output lambda"
  type        = string
}

variable "batch_output_architectures" {
  description = "Architectures for batch output lambda"
  type        = list(string)
}

variable "batch_output_handler" {
  description = "Handler for batch output lambda"
  type        = string
}

variable "batch_output_timeout" {
  description = "Timeout for batch output lambda"
  type        = number
}

variable "batch_output_memory_size" {
  description = "Memory size for batch output lambda"
  type        = number
}

variable "batch_output_lambda_sourcecode_bucket" {
  description = "Source code bucket for batch output lambda"
  type        = string
}

variable "batch_output_lambda_sourcecode_filename" {
  description = "Source code file for batch output lambda"
  type        = string
}

variable "batch_output_ephemeral_storage_size" {
  description = "Ephemeral storage size for batch output lambda"
  type        = number
  default     = null
}



# -------------------------
# Details To Manifest Lambda Variables
# -------------------------

variable "details_manifest_runtime" {
  description = "Runtime for details manifest lambda"
  type        = string
}

variable "details_manifest_architectures" {
  description = "Architectures for details manifest lambda"
  type        = list(string)
}

variable "details_manifest_handler" {
  description = "Handler for details manifest lambda"
  type        = string
}

variable "details_manifest_timeout" {
  description = "Timeout for details manifest lambda"
  type        = number
}

variable "details_manifest_memory_size" {
  description = "Memory size for details manifest lambda"
  type        = number
}

variable "details_manifest_lambda_sourcecode_bucket" {
  description = "Source code bucket for details manifest lambda"
  type        = string
}

variable "details_manifest_lambda_sourcecode_filename" {
  description = "Source code file for details manifest lambda"
  type        = string
}

variable "details_manifest_ephemeral_storage_size" {
  description = "Ephemeral storage size for details manifest lambda"
  type        = number
  default     = null
}






# -------------------------
# Process Usage Data To Manifest Lambda Variables
# -------------------------

variable "usage_manifest_runtime" {
  description = "Runtime for usage manifest lambda"
  type        = string
}

variable "usage_manifest_architectures" {
  description = "Architectures for usage manifest lambda"
  type        = list(string)
}

variable "usage_manifest_handler" {
  description = "Handler for usage manifest lambda"
  type        = string
}

variable "usage_manifest_timeout" {
  description = "Timeout for usage manifest lambda"
  type        = number
}

variable "usage_manifest_memory_size" {
  description = "Memory size for usage manifest lambda"
  type        = number
}

variable "usage_manifest_lambda_sourcecode_bucket" {
  description = "Source code bucket for usage manifest lambda"
  type        = string
}

variable "usage_manifest_lambda_sourcecode_filename" {
  description = "Source code file for usage manifest lambda"
  type        = string
}

variable "usage_manifest_ephemeral_storage_size" {
  description = "Ephemeral storage size for usage manifest lambda"
  type        = number
  default     = null
}


# -------------------------
# KS No Chunk Analyzer Lambda Variables
# -------------------------

variable "ks_no_chunk_analyzer_runtime" {
  description = "Runtime for KS no chunk analyzer lambda"
  type        = string
}

variable "ks_no_chunk_analyzer_architectures" {
  description = "Architectures for KS no chunk analyzer lambda"
  type        = list(string)
}

variable "ks_no_chunk_analyzer_handler" {
  description = "Handler for KS no chunk analyzer lambda"
  type        = string
}

variable "ks_no_chunk_analyzer_timeout" {
  description = "Timeout for KS no chunk analyzer lambda"
  type        = number
}

variable "ks_no_chunk_analyzer_memory_size" {
  description = "Memory size for KS no chunk analyzer lambda"
  type        = number
}

variable "ks_no_chunk_analyzer_lambda_sourcecode_bucket" {
  description = "Source code bucket for KS no chunk analyzer lambda"
  type        = string
}

variable "ks_no_chunk_analyzer_lambda_sourcecode_filename" {
  description = "Source code file for KS no chunk analyzer lambda"
  type        = string
}

variable "ks_no_chunk_analyzer_ephemeral_storage_size" {
  description = "Ephemeral storage size for KS no chunk analyzer lambda"
  type        = number
  default     = null
}

# variable "ks_no_chunk_analyzer_api_key" {
#   description = "API key for KS no chunk analyzer lambda"
#   type        = string
# }



# -------------------------
# Ensure Manifest Details Aggregates Lambda Variables
# -------------------------

variable "ensure_manifest_details_aggregates_runtime" {
  description = "Runtime for ensure manifest details aggregates lambda"
  type        = string
}

variable "ensure_manifest_details_aggregates_architectures" {
  description = "Architectures for ensure manifest details aggregates lambda"
  type        = list(string)
}

variable "ensure_manifest_details_aggregates_handler" {
  description = "Handler for ensure manifest details aggregates lambda"
  type        = string
}

variable "ensure_manifest_details_aggregates_timeout" {
  description = "Timeout for ensure manifest details aggregates lambda"
  type        = number
}

variable "ensure_manifest_details_aggregates_memory_size" {
  description = "Memory size for ensure manifest details aggregates lambda"
  type        = number
}

variable "ensure_manifest_details_aggregates_lambda_sourcecode_bucket" {
  description = "Source code bucket for ensure manifest details aggregates lambda"
  type        = string
}

variable "ensure_manifest_details_aggregates_lambda_sourcecode_filename" {
  description = "Source code file for ensure manifest details aggregates lambda"
  type        = string
}

variable "ensure_manifest_details_aggregates_ephemeral_storage_size" {
  description = "Ephemeral storage size for ensure manifest details aggregates lambda"
  type        = number
  default     = null
}




# -------------------------
# Batch Jsonl Creator Lambda Variables
# -------------------------

variable "batch_jsonl_creator_runtime" {
  description = "Runtime for batch jsonl creator lambda"
  type        = string
}

variable "batch_jsonl_creator_architectures" {
  description = "Architectures for batch jsonl creator lambda"
  type        = list(string)
}

variable "batch_jsonl_creator_handler" {
  description = "Handler for batch jsonl creator lambda"
  type        = string
}

variable "batch_jsonl_creator_timeout" {
  description = "Timeout for batch jsonl creator lambda"
  type        = number
}

variable "batch_jsonl_creator_memory_size" {
  description = "Memory size for batch jsonl creator lambda"
  type        = number
}

variable "batch_jsonl_creator_lambda_sourcecode_bucket" {
  description = "Source code bucket for batch jsonl creator lambda"
  type        = string
}

variable "batch_jsonl_creator_lambda_sourcecode_filename" {
  description = "Source code file for batch jsonl creator lambda"
  type        = string
}

variable "batch_jsonl_creator_ephemeral_storage_size" {
  description = "Ephemeral storage size for batch jsonl creator lambda"
  type        = number
  default     = null
}



# -------------------------
# API Lambda Variables
# -------------------------

variable "api_runtime" {
  description = "Runtime for API lambda"
  type        = string
}

variable "api_architectures" {
  description = "Architectures for API lambda"
  type        = list(string)
}

variable "api_handler" {
  description = "Handler for API lambda"
  type        = string
}

variable "api_timeout" {
  description = "Timeout for API lambda"
  type        = number
}

variable "api_memory_size" {
  description = "Memory size for API lambda"
  type        = number
}

variable "api_lambda_sourcecode_bucket" {
  description = "Source code bucket for API lambda"
  type        = string
}

variable "api_lambda_sourcecode_filename" {
  description = "Source code file for API lambda"
  type        = string
}

variable "api_ephemeral_storage_size" {
  description = "Ephemeral storage size for API lambda"
  type        = number
  default     = null
}

########

# variable "region" {
#   type = string
# }

# variable "api_name" {
#   type = string
# }

# variable "stage_name" {
#   type = string
# }

# variable "jwt_issuer" {
#   type = string
# }

# variable "jwt_audience" {
#   type = list(string)
# }

# variable "lambda_arns" {
#   type = map(string)
# }

# variable "tags" {
#   type = map(string)
# }





























































































####################################
# DynamoDB Manifest Table Variables
####################################
# variable "manifest_ddb_billing_mode" {
#   description = "Billing mode for the manifest DynamoDB table"
#   type        = string
# }

# variable "manifest_ddb_hashkey" {
#   description = "Partition key for the manifest DynamoDB table"
#   type        = string
# }

# variable "manifest_ddb_attributename" {
#   description = "Attribute name for the manifest DynamoDB table"
#   type        = string
# }

# variable "manifest_ddb_attributetype" {
#   description = "Attribute type for the manifest DynamoDB table"
#   type        = string
# }

# variable "manifest_enable_ddb_backup" {
#   description = "Enable Point-In-Time Recovery for manifest DynamoDB table"
#   type        = bool
# }

# ####################################
# # DynamoDB Index Table Variables
# ####################################
# variable "index_ddb_billing_mode" {
#   description = "Billing mode for the index DynamoDB table"
#   type        = string
# }

# variable "index_ddb_hashkey" {
#   description = "Partition key for the index DynamoDB table"
#   type        = string
# }

# variable "index_ddb_attributename" {
#   description = "Attribute name for the index DynamoDB table"
#   type        = string
# }

# variable "index_ddb_attributetype" {
#   description = "Attribute type for the index DynamoDB table"
#   type        = string
# }

# variable "index_enable_ddb_backup" {
#   description = "Enable Point-In-Time Recovery for index DynamoDB table"
#   type        = bool
# }

# -------------------------
# Index Table Variables
# -------------------------

variable "index_ddb_billing_mode" {
  description = "Billing mode for index table"
  type        = string
}

variable "index_ddb_hashkey" {
  description = "Hash key for index table"
  type        = string
}

variable "index_ddb_attributename" {
  description = "Attribute name for index table"
  type        = string
}

variable "index_ddb_attributetype" {
  description = "Attribute type for index table"
  type        = string
}

variable "index_enable_ddb_backup" {
  description = "Enable backup for index table"
  type        = bool
}

# -------------------------
# Manifest Table Variables
# -------------------------

variable "manifest_ddb_billing_mode" {
  description = "Billing mode for manifest table"
  type        = string
}

variable "manifest_ddb_hashkey" {
  description = "Hash key for manifest table"
  type        = string
}

variable "manifest_ddb_attributename" {
  description = "Attribute name for manifest table"
  type        = string
}

variable "manifest_ddb_attributetype" {
  description = "Attribute type for manifest table"
  type        = string
}

variable "manifest_enable_ddb_backup" {
  description = "Enable backup for manifest table"
  type        = bool
}

# -------------------------
# Batch Table Variables
# -------------------------

variable "batch_ddb_billing_mode" {
  description = "Billing mode for batch table"
  type        = string
}

variable "batch_ddb_hashkey" {
  description = "Hash key for batch table"
  type        = string
}

variable "batch_ddb_attributename" {
  description = "Attribute name for batch table"
  type        = string
}

variable "batch_ddb_attributetype" {
  description = "Attribute type for batch table"
  type        = string
}

variable "batch_enable_ddb_backup" {
  description = "Enable backup for batch table"
  type        = bool
}

# -------------------------
# Issues Table Variables
# -------------------------

variable "issues_ddb_billing_mode" {
  description = "Billing mode for issues table"
  type        = string
}

variable "issues_ddb_hashkey" {
  description = "Hash key for issues table"
  type        = string
}

variable "issues_ddb_attributename" {
  description = "Attribute name for issues table"
  type        = string
}

variable "issues_ddb_attributetype" {
  description = "Attribute type for issues table"
  type        = string
}

variable "issues_enable_ddb_backup" {
  description = "Enable backup for issues table"
  type        = bool
}




####################################
# REST API Variables
####################################
# variable "stage_name" {
#   description = "API Gateway deployment stage name"
#   type        = string
# }

####################################
# Cognito Module Variables
####################################
variable "enable_mfa" {
  description = "Enable or disable MFA for the Cognito user pool"
  type        = bool
}
