output "bucket_name" {
  description = "The name of the S3 bucket."
  value = aws_s3_bucket.bucket.bucket
}

output "table_name" {
  description = "The name of the DynamoDB table."
  value = aws_dynamodb_table.table.name
}
