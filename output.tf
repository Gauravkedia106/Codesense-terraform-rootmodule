####################################
# S3 Frontend Bucket Outputs
####################################
output "uibucket_name" {
  value = module.s3bucket_ui.bucket_name
}

output "uibucket_arn" {
  value = module.s3bucket_ui.bucket_arn
}

####################################
# S3 ABAP Code Storage Bucket Outputs
####################################
# output "abapbucket_name" {
#   value = module.s3bucket_abap.bucket_name
# }

# output "abapbucket_arn" {
#   value = module.s3bucket_abap.bucket_arn
# }

# output "s3_emami_final_bucket_id" {
#   value = module.s3bucket_emami_final.bucket_id
# }
output "s3_emami_final_bucket_name" {
  value = module.s3bucket_emami_final.bucket_name
}


output "s3_emami_final_bucket_arn" {
  value = module.s3bucket_emami_final.bucket_arn
}

####################################
# CloudFront Outputs
####################################
output "cloudfront_distribution_id" {
  value = module.cloudfront.cloudfront_distribution_id
}

output "cloudfront_distribution_arn" {
  value = module.cloudfront.cloudfront_distribution_arn
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}

output "oac_id" {
  value = module.cloudfront.oac_id
}

output "cloudfront_status" {
  value = module.cloudfront.cloudfront_status
}

output "cloudfront_oac_arn" {
  value = module.cloudfront.cloudfront_oac_arn
}

####################################
# IAM Role Outputs
####################################
# output "analyzer_iamrole_arn" {
#   value = module.iamrole_analyzer.iamrolearn
# }

# output "api_iamrole_arn" {
#   value = module.iamrole_api.iamrolearn
# }

# output "analyzer_iamrole_name" {
#   value = module.iamrole_analyzer.iam_role_name
# }

# output "api_iamrole_name" {
#   value = module.iamrole_api.iam_role_name
# }


# output "analyzer_iamrole_id" {
#   value = module.iamrole_analyzer.iam_role_id
# }

# output "api_iamrole_id" {
#   value = module.iamrole_api.iam_role_id
# }

# -------------------------
# Batch Counts IAM Role Outputs
# -------------------------

output "batch_counts_iam_role_arn" {
  value = module.iamrole_batch_counts.iamrolearn
}

output "batch_counts_iam_role_name" {
  value = module.iamrole_batch_counts.iam_role_name
}

output "batch_counts_iam_role_id" {
  value = module.iamrole_batch_counts.iam_role_id
}



# -------------------------
# Batch Orchestrator IAM Role Outputs
# -------------------------

output "batch_orchestrator_iam_role_arn" {
  value = module.iamrole_batch_orchestrator.iamrolearn
}

output "batch_orchestrator_iam_role_name" {
  value = module.iamrole_batch_orchestrator.iam_role_name
}

output "batch_orchestrator_iam_role_id" {
  value = module.iamrole_batch_orchestrator.iam_role_id
}


# -------------------------
# Analyzer IAM Role Outputs
# -------------------------

output "analyzer_iam_role_arn" {
  value = module.iamrole_analyzer.iamrolearn
}

output "analyzer_iam_role_name" {
  value = module.iamrole_analyzer.iam_role_name
}

output "analyzer_iam_role_id" {
  value = module.iamrole_analyzer.iam_role_id
}




# -------------------------
# Batch Output IAM Role Outputs
# -------------------------

output "batch_output_iam_role_arn" {
  value = module.iamrole_batch_output.iamrolearn
}

output "batch_output_iam_role_name" {
  value = module.iamrole_batch_output.iam_role_name
}

output "batch_output_iam_role_id" {
  value = module.iamrole_batch_output.iam_role_id
}



# -------------------------
# Details Manifest IAM Role Outputs
# -------------------------

output "details_manifest_iam_role_arn" {
  value = module.iamrole_details_manifest.iamrolearn
}

output "details_manifest_iam_role_name" {
  value = module.iamrole_details_manifest.iam_role_name
}

output "details_manifest_iam_role_id" {
  value = module.iamrole_details_manifest.iam_role_id
}



# -------------------------
# Usage Manifest IAM Role Outputs
# -------------------------

output "usage_manifest_iam_role_arn" {
  value = module.iamrole_usage_manifest.iamrolearn
}

output "usage_manifest_iam_role_name" {
  value = module.iamrole_usage_manifest.iam_role_name
}

output "usage_manifest_iam_role_id" {
  value = module.iamrole_usage_manifest.iam_role_id
}


# -------------------------
# KS No Chunk Analyzer IAM Role Outputs
# -------------------------

output "ks_no_chunk_analyzer_iam_role_arn" {
  value = module.iamrole_ks_no_chunk_analyzer.iamrolearn
}

output "ks_no_chunk_analyzer_iam_role_name" {
  value = module.iamrole_ks_no_chunk_analyzer.iam_role_name
}

output "ks_no_chunk_analyzer_iam_role_id" {
  value = module.iamrole_ks_no_chunk_analyzer.iam_role_id
}





# -------------------------
# Ensure Manifest IAM Role Outputs
# -------------------------

output "ensure_manifest_iam_role_arn" {
  value = module.iamrole_ensure_manifest_details_aggregates.iamrolearn
}

output "ensure_manifest_iam_role_name" {
  value = module.iamrole_ensure_manifest_details_aggregates.iam_role_name
}

output "ensure_manifest_iam_role_id" {
  value = module.iamrole_ensure_manifest_details_aggregates.iam_role_id
}




# -------------------------
# Batch Jsonl Creator IAM Role Outputs
# -------------------------

output "batch_jsonl_creator_iam_role_arn" {
  value = module.iamrole_batch_jsonl_creator.iamrolearn
}

output "batch_jsonl_creator_iam_role_name" {
  value = module.iamrole_batch_jsonl_creator.iam_role_name
}

output "batch_jsonl_creator_iam_role_id" {
  value = module.iamrole_batch_jsonl_creator.iam_role_id
}


# -------------------------
# API IAM Role Outputs
# -------------------------

output "api_iam_role_arn" {
  value = module.iamrole_api.iamrolearn
}

output "api_iam_role_name" {
  value = module.iamrole_api.iam_role_name
}

output "api_iam_role_id" {
  value = module.iamrole_api.iam_role_id
}













# ####################################
# # Lambda Analyzer Outputs
# ####################################
# output "lambda_analyzer_name" {
#   value = module.lambda_analyzer.lambda_name
# }

# output "lambda_analyzer_arn" {
#   value = module.lambda_analyzer.lambda_arn
# }

# ####################################
# # Lambda API Outputs
# ####################################
# output "lambda_api_name" {
#   value = module.lambda_api.lambda_name
# }

# output "lambda_api_arn" {
#   value = module.lambda_api.lambda_arn
# }


# -------------------------
# Batch Counts To BatchTable Lambda Outputs
# -------------------------

output "batch_counts_lambda_name" {
  description = "Lambda function name"
  value       = module.lambda_batch_counts.lambda_name
}

output "batch_counts_lambda_arn" {
  description = "Lambda function ARN"
  value       = module.lambda_batch_counts.lambda_arn
}


# -------------------------
# Batch Orchestrator Lambda Outputs
# -------------------------

output "batch_orchestrator_lambda_name" {
  description = "Batch orchestrator lambda name"
  value       = module.lambda_batch_orchestrator.lambda_name
}

output "batch_orchestrator_lambda_arn" {
  description = "Batch orchestrator lambda ARN"
  value       = module.lambda_batch_orchestrator.lambda_arn
}



# -------------------------
# Analyzer Lambda Outputs
# -------------------------

output "analyzer_lambda_name" {
  description = "Analyzer lambda function name"
  value       = module.lambda_analyzer.lambda_name
}

output "analyzer_lambda_arn" {
  description = "Analyzer lambda function ARN"
  value       = module.lambda_analyzer.lambda_arn
}


# -------------------------
# Batch Output To Tables Lambda Outputs
# -------------------------

output "batch_output_lambda_name" {
  description = "Batch output lambda function name"
  value       = module.lambda_batch_output.lambda_name
}

output "batch_output_lambda_arn" {
  description = "Batch output lambda function ARN"
  value       = module.lambda_batch_output.lambda_arn
}


# -------------------------
# Details To Manifest Lambda Outputs
# -------------------------

output "details_manifest_lambda_name" {
  description = "Details manifest lambda function name"
  value       = module.lambda_details_manifest.lambda_name
}

output "details_manifest_lambda_arn" {
  description = "Details manifest lambda function ARN"
  value       = module.lambda_details_manifest.lambda_arn
}


# -------------------------
# Process Usage Data To Manifest Lambda Outputs
# -------------------------

output "usage_manifest_lambda_name" {
  description = "Usage manifest lambda function name"
  value       = module.lambda_usage_manifest.lambda_name
}

output "usage_manifest_lambda_arn" {
  description = "Usage manifest lambda function ARN"
  value       = module.lambda_usage_manifest.lambda_arn
}



# -------------------------
# KS No Chunk Analyzer Lambda Outputs
# -------------------------

output "ks_no_chunk_analyzer_lambda_name" {
  description = "KS no chunk analyzer lambda function name"
  value       = module.lambda_ks_no_chunk_analyzer.lambda_name
}

output "ks_no_chunk_analyzer_lambda_arn" {
  description = "KS no chunk analyzer lambda function ARN"
  value       = module.lambda_ks_no_chunk_analyzer.lambda_arn
}



# -------------------------
# Ensure Manifest Details Aggregates Lambda Outputs
# -------------------------

output "ensure_manifest_details_aggregates_lambda_name" {
  description = "Ensure manifest details aggregates lambda function name"
  value       = module.lambda_ensure_manifest_details_aggregates.lambda_name
}

output "ensure_manifest_details_aggregates_lambda_arn" {
  description = "Ensure manifest details aggregates lambda function ARN"
  value       = module.lambda_ensure_manifest_details_aggregates.lambda_arn
}



# -------------------------
# Batch Jsonl Creator Lambda Outputs
# -------------------------

output "batch_jsonl_creator_lambda_name" {
  description = "Batch jsonl creator lambda function name"
  value       = module.lambda_batch_jsonl_creator.lambda_name
}

output "batch_jsonl_creator_lambda_arn" {
  description = "Batch jsonl creator lambda function ARN"
  value       = module.lambda_batch_jsonl_creator.lambda_arn
}


# -------------------------
# API Lambda Outputs
# -------------------------

output "api_lambda_name" {
  description = "API lambda function name"
  value       = module.lambda_api.lambda_name
}

output "api_lambda_arn" {
  description = "API lambda function ARN"
  value       = module.lambda_api.lambda_arn
}


# -------------------------
# Bedrock Batch IAM Role Outputs
# -------------------------

output "bedrock_batch_iam_role_arn" {
  value = module.iamrole_bedrock_batch.bedrock_batch_role_arn
}

output "bedrock_batch_iam_role_name" {
  value = module.iamrole_bedrock_batch.bedrock_batch_role_name
}

output "bedrock_batch_iam_role_id" {
  value = module.iamrole_bedrock_batch.bedrock_batch_role_id
}


#################

# output "api_endpoint" {
#   value = module.http_api_gateway.api_endpoint
# }

# output "api_id" {
#   value = module.http_api_gateway.api_id
# }
































####################################
# SQS Main Queue Outputs
####################################
# output "main_sqs_name" {
#   value = module.sqs_main.sqs_name
# }

# output "main_sqs_arn" {
#   value = module.sqs_main.sqs_arn
# }

# output "main_sqs_url" {
#   value = module.sqs_main.sqs_url
# }

output "batch_output_sqs_name" {
  value = module.sqs_batch_output.sqs_name
}

output "batch_output_sqs_arn" {
  value = module.sqs_batch_output.sqs_arn
}

output "batch_output_sqs_url" {
  value = module.sqs_batch_output.sqs_url
}




output "batch_sqs_name" {
  value = module.sqs_batch.sqs_name
}

output "batch_sqs_arn" {
  value = module.sqs_batch.sqs_arn
}

output "batch_sqs_url" {
  value = module.sqs_batch.sqs_url
}


####################################
# SQS codesenseai-prd-emami-main-sqs
####################################


output "main_sqs_name" {
  value = module.sqs_main.sqs_name
}

output "main_sqs_arn" {
  value = module.sqs_main.sqs_arn
}

output "main_sqs_url" {
  value = module.sqs_main.sqs_url
}


####################################
# SQS details_queue_codesense
####################################


output "details_sqs_name" {
  value = module.sqs_details.sqs_name
}

output "details_sqs_arn" {
  value = module.sqs_details.sqs_arn
}

output "details_sqs_url" {
  value = module.sqs_details.sqs_url
}


####################################
# SQS usage_data_queue
####################################

output "usage_sqs_name" {
  value = module.sqs_usage.sqs_name
}

output "usage_sqs_arn" {
  value = module.sqs_usage.sqs_arn
}

output "usage_sqs_url" {
  value = module.sqs_usage.sqs_url
}



# ####################################
# # SQS Dead Letter Queue Outputs
# ####################################
# output "dlq_sqs_name" {
#   value = module.sqs_dlq.sqs_name
# }

# output "dlq_sqs_arn" {
#   value = module.sqs_dlq.sqs_arn
# }

# output "dlq_sqs_url" {
#   value = module.sqs_dlq.sqs_url
# }

# ####################################
# # DynamoDB Manifest Table Outputs
# ####################################
# output "manifest_ddb_name" {
#   value = module.ddb_mainfest.ddb_name
# }

# output "manifest_ddb_arn" {
#   value = module.ddb_mainfest.ddb_arn
# }

# output "manifest_ddb_PITR" {
#   value = module.ddb_mainfest.ddb_backup
# }

# ####################################
# # DynamoDB Index Table Outputs
# ####################################
# output "index_ddb_name" {
#   value = module.ddb_index.ddb_name
# }

# output "index_ddb_arn" {
#   value = module.ddb_index.ddb_arn
# }

# output "index_ddb_PITR" {
#   value = module.ddb_index.ddb_backup
# }



# -------------------------
# Index Table Outputs
# -------------------------

output "ddb_index_table_name" {
  value = module.ddb_index.ddb_name
}

output "ddb_index_table_arn" {
  value = module.ddb_index.ddb_arn
}

output "ddb_index_table_backup" {
    value = module.ddb_index.ddb_backup
  
}

# -------------------------
# Manifest Table Outputs
# -------------------------

output "ddb_manifest_table_name" {
  value = module.ddb_manifest.ddb_name
}

output "ddb_manifest_table_arn" {
  value = module.ddb_manifest.ddb_arn
}

output "ddb_maifest_table_backup" {
    value = module.ddb_manifest.ddb_backup
  
}

# -------------------------
# Batch Table Outputs
# -------------------------

output "ddb_batch_table_name" {
  value = module.ddb_batch.ddb_name
}

output "ddb_batch_table_arn" {
  value = module.ddb_batch.ddb_arn
}

output "ddb_batch_table_backup" {
    value = module.ddb_batch.ddb_backup
  
}
# -------------------------
# Issues Table Outputs
# -------------------------

output "ddb_issues_table_name" {
  value = module.ddb_issues.ddb_name
}

output "ddb_issues_table_arn" {
  value = module.ddb_issues.ddb_arn
}

output "ddb_issues_table_backup" {
    value = module.ddb_issues.ddb_backup
  
}

















####################################
# Cognito Module Outputs
####################################
output "cognito_user_pool_name" {
  value = module.coginto.cognito_user_pool_name
}

output "cognito_app_client_name" {
  value = module.coginto.cognito_app_client_name
}

output "cognito_domain_name" {
  value = module.coginto.cognito_domain_name
}

output "cognito_domain_url" {
  value = module.coginto.cognito_domain_url
}


# ######## changing ####
# output "user_pool_issuer" {
#   description = "Final API Gateway Endpoint"
#   value       = module.coginto.user_pool_issuer
# }
