output "aws_s3_bucket" {
  value = aws_s3_bucket.terraform_state.bucket
}

output "aws_dynamodb_table" {
  value = aws_dynamodb_table.terraform_lock.name
}