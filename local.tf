locals {
  aws_console_tags = {
    AppName     = "CodeSenseAI"
    Environment = var.environment
    AppVersion  = var.app_version
    ManagedBy   = "Terraform"
  }

  name_prefix = "${var.project}-${var.client}-${var.environment}"

  # -------------------------
  # S3 Buckets
  # -------------------------

  s3_emami_final_bucket = "${local.name_prefix}-final-bucket"
  s3_ui_bucket   = "${local.name_prefix}-frontend-ui"

  # -------------------------
  # SQS Queues
  # -------------------------
     
batch_output_sqs = "${local.name_prefix}-batch-output-queue"
batch_sqs = "${local.name_prefix}-batch-queue"
main_sqs = "${local.name_prefix}-main-queue"
details_sqs = "${local.name_prefix}-details-queue"
usage_sqs = "${local.name_prefix}-usage-queue"


 # -------------------------
 # Lambda Functions
 # -------------------------

 batch_counts_lambda = "${local.name_prefix}-batch-counts-lambda"
 batch_orchestrator_lambda = "${local.name_prefix}-batch-orchestrator-lambda"
 analyzer_lambda = "${local.name_prefix}-analyzer-lambda"
 batch_output_lambda = "${local.name_prefix}-batch-output-lambda"
 details_manifest_lambda = "${local.name_prefix}-details-manifest-lambda"
 usage_manifest_lambda = "${local.name_prefix}-usage-manifest-lambda"
 ks_no_chunk_analyzer_lambda = "${local.name_prefix}-ks-no-chunk-analyzer-lambda"
 ensure_manifest_details_aggregates_lambda = "${local.name_prefix}-ensure-manifest-details-aggregates-lambda"
 batch_jsonl_creator_lambda = "${local.name_prefix}-batch-jsonl-creator-lambda"
 api_lambda = "${local.name_prefix}-api-lambda"



  # -------------------------
  # DynamoDB Tables
  # -------------------------

  ddb_index_table = "${local.name_prefix}-index-table"
  ddb_manifest_table = "${local.name_prefix}-manifest-table"
  ddb_batch_table = "${local.name_prefix}-batch-table"
  ddb_issues_table = "${local.name_prefix}-issues-table"

  #IAM Roles

  batch_counts_role_name = "${local.name_prefix}-batch-counts-role"
  batch_counts_policy =file("${path.module}/assets/iam_role_policy/Batch_counts_to_BatchTable.json")  


  batch_orchestrator_role_name = "${local.name_prefix}-batch-orchestrator-role"
  batch_orchestrator_policy = file("${path.module}/assets/iam_role_policy/Batch-Orchestrator.json")  


  analyzer_lambda_role_name = "${local.name_prefix}-analyzer-lambda-role"
  analyzer_policy = file("${path.module}/assets/iam_role_policy/codesenseai-prd-emami-analyzer-lambda.json")  

  batch_output_role_name = "${local.name_prefix}-batch-output-role"
  batch_output_policy = file("${path.module}/assets/iam_role_policy/batch_output_to_tabels.json")  



  details_manifest_role_name = "${local.name_prefix}-details-manifest-role"
  details_manifest_policy = file("${path.module}/assets/iam_role_policy/details_to_manifest_lambda.json")  


  usage_manifest_role_name = "${local.name_prefix}-usage-manifest-role"
  usage_manifest_policy = file("${path.module}/assets/iam_role_policy/process_usagedata_to_manifest.json")  


  ks_no_chunk_analyzer_role_name = "${local.name_prefix}-ks-no-chunk-analyzer-role"
  ks_no_chunk_analyzer_policy = file("${path.module}/assets/iam_role_policy/codesense-ai-ks-no-chunk-analyzer.json")  


  ensure_manifest_details_aggregates_role_name = "${local.name_prefix}-ensure-manifest-details-aggregates-role"
  ensure_manifest_details_aggregates_policy = file("${path.module}/assets/iam_role_policy/ensure-manifest-details-aggregates.json")  

  batch_jsonl_creator_role_name = "${local.name_prefix}-batch-jsonl-creator-role"
  batch_jsonl_creator_policy = file("${path.module}/assets/iam_role_policy/R_Batch-Jsonl-Creator.json")


  api_lambda_role_name = "${local.name_prefix}-api-lambda-role"
  api_policy = file("${path.module}/assets/iam_role_policy/codesenseai-prd-emami-api-lambda.json")  



#   batch_invocation_role_name = "${local.name_prefix}-batch-invocation-role"
#   batch_invocation_policy = file("${path.module}/assets/iam_role_policy/R_bedrock_batch_policy_custom.json")

    bedrock_batch_role_name = "${local.name_prefix}-bedrock-batch-role"
    bedrock_batch_policy = file("${path.module}/assets/iam_role_policy/R_bedrock_batch_policy_custom.json")










 
  #CloudFront
  cloudfront_comment  = "${local.name_prefix}-frontend-ui-cdn"
  cloudfront_oac_name = "${local.name_prefix}-frontend-ui-oac"


  
  #Cognito
  cognito_user_pool  = "${local.name_prefix}-cognito-user-pool"
  cognito_app_client = "${local.name_prefix}-cognito-app-client"
  cognito_domain     = "${local.name_prefix}-domain"
  callback_urls = [
    "https://${module.cloudfront.cloudfront_domain_name}"
  ]
  logout_urls = [
    "https://${module.cloudfront.cloudfront_domain_name}"
  ]



























  

  

}